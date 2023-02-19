import { runTypeChain, glob as typechainGlob } from "typechain";
import glob from "glob";
import { extractIdFromFile } from "./ids.js";
import { rmSync, writeFileSync } from "fs";
import path from "path";
import { filterAbi, forgeBuild } from "./build.js";
import { getOutDirectory, getSrcDirectory } from "./forgeConfig";
import { systemsDir } from "./constants";

export async function generateAbiTypes(
  inputDir: string,
  outputDir: string,
  options?: { clear?: boolean; cwd?: string }
) {
  if (options?.clear) {
    console.log("Clearing typechain output directory", outputDir);
    rmSync(outputDir, { recursive: true, force: true });
  }

  const cwd = options?.cwd ?? process.cwd();

  const allFiles = typechainGlob(cwd, [`${inputDir}/**/+([a-zA-Z0-9_]).json`]);

  const result = await runTypeChain({
    cwd,
    filesToProcess: allFiles,
    allFiles,
    outDir: outputDir,
    target: "ethers-v5",
  });

  console.log(`Successfully generated ${result.filesGenerated} files`);
}

export async function generateSystemTypes(outputDir: string, options?: { clear?: boolean }) {
  if (options?.clear) {
    console.log("Clearing system type output files", outputDir);
    rmSync(path.join(outputDir, "/SystemTypes.ts"), { force: true });
    rmSync(path.join(outputDir, "/SystemAbis.mts"), { force: true });
    rmSync(path.join(outputDir, "/SystemAbis.mjs"), { force: true });
    rmSync(path.join(outputDir, "/SystemMappings.ts"), { force: true });
  }

  let abis: string[] = [];
  let systems: string[] = [];
  let ids: string[] = [];
  let typePaths: string[] = [];

  const srcDir = await getSrcDirectory();
  const systemsPath = path.join(srcDir, systemsDir, "*.sol");

  const matches = glob.sync(systemsPath);

  systems = matches.map((path) => {
    const fragments = path.split("/");
    return fragments[fragments.length - 1].split(".sol")[0];
  });

  ids = matches.map((path, index) => {
    const id = extractIdFromFile(path);
    if (!id) {
      console.log("Path:", path);
      console.log("ID:", id);
      throw new Error(
        "No ID found for" +
          matches[index] +
          ". Make sure your system source file includes a ID definition (uint256 constant ID = uint256(keccak256(<ID>));)"
      );
    }
    return id;
  });

  abis = systems.map((system) => `../abi/${system}.json`);

  typePaths = systems.map((system) => `./ethers-contracts/${system}.ts`);

  console.log("Matches", systems);
  console.log("Solidity", ids);
  console.log("Type paths", typePaths);
  console.log("ABIs", abis);

  const SystemMappings = `// Autogenerated using mud system-types
export const systemToId = {
${systems.map((system, index) => `  ${system}: "${ids[index]}",`).join("\n")}
};

export const idToSystem = {
${ids.map((id, index) => `  "${id}": "${systems[index]}",`).join("\n")}
};
  `;

  const SystemTypes = `// Autogenerated using mud system-types
${typePaths.map((path, index) => `import { ${systems[index]} } from "${path.replace(".ts", "")}";`).join("\n")}
 
export type SystemTypes = {
${systems.map((system, index) => `  "${ids[index]}": ${system};`).join("\n")}
};
`;

  const SystemAbis = `// Autogenerated using mud system-types
${abis.map((path, index) => `import ${systems[index]} from "${path}";`).join("\n")}

export const SystemAbis = {
${systems.map((system, index) => `  "${ids[index]}": ${system}.abi,`).join("\n")}
};
`;

  console.log("Generating files:");
  console.log("SystemTypes.ts", SystemTypes);
  console.log("SystemAbis.mts", SystemAbis);
  console.log("SystemMappings.ts", SystemMappings);

  writeFileSync(`${outputDir}/SystemTypes.ts`, SystemTypes);
  writeFileSync(`${outputDir}/SystemAbis.mts`, SystemAbis);
  writeFileSync(`${outputDir}/SystemAbis.mjs`, SystemAbis);
  writeFileSync(`${outputDir}/SystemMappings.ts`, SystemMappings);
}

/**
 * @param abiDir If not provided, the contracts are built and abis are exported to ./abi
 */
export async function generateTypes(abiDir?: string, outputDir = "./types", options?: { clear?: boolean }) {
  if (!abiDir) {
    console.log("Compiling contracts");
    const buildOutput = await getOutDirectory();
    abiDir = "./abi";
    await forgeBuild(options);
    filterAbi(buildOutput, abiDir);
  }

  await generateAbiTypes(abiDir, path.join(outputDir, "ethers-contracts"), options);
  await generateSystemTypes(outputDir, options);
}