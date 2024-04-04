// console.log('imm')
// const shell=require('shelljs')
// shell.exec('ls -l')
const express = require("express");
const shell = require("shelljs");
const cors = require("cors");

const app = express();
app.use(express.json());
app.use(express.text());
app.use(express.urlencoded({ extended: false }));
const port = 3001;
app.use(cors());

const router = express.Router();

router.post("/node_reset", (req, res) => {
  const { ipAddress, password, nodepassword } = req.body;
  const currentDate = new Date();
  const formattedDate = currentDate
    .toISOString()
    .replace(/:/g, "-")
    .replace(/\..+/, ""); // Format date as YYYY-MM-DDTHH-MM-SS
  const destinationFolder = `<CHANGE THIS ADDRESS>/main-node/logs/reset/${formattedDate}`;
  const createFolderCommand = `mkdir -p "${destinationFolder}"`;
  const copyFilesCommand = `sshpass -p "${password}" scp ${ipAddress}:/root/moi/log/3W* "${destinationFolder}/"`;
  const nodeResetCommand = `sshpass -p "${password}" ssh -o StrictHostKeyChecking=no ${ipAddress} ARG1="${nodepassword}" 'bash -s' < reset.sh`;

  try {
    // const command = `${createFolderCommand} && ${copyFilesCommand} && ${nodeResetCommand}`;
    const command = `${nodeResetCommand}`;


    const { stdout, stderr } = shell.exec(command);


    res.status(200).send(stdout);
  } catch (error) {
    console.error("Error running reset script:", error);
    res.status(500).send("Unknown Error");
  }
});

router.post("/changeconfig", (req, res) => { // Reset the node using config file
  const { ipAddress, password, nodepassword } = req.body;
  const destinationFolder = `<CHANGE THIS ADDRESS>/main-node/config.json`;
  const copyFilesCommand = `sshpass -p "${password}" scp "${destinationFolder}" ${ipAddress}:/root/moi/ `;
  const nodeResetCommand = `sshpass -p "${password}" ssh -o StrictHostKeyChecking=no ${ipAddress} ARG1="${nodepassword}" 'bash -s' < configr.sh`;

  try {
    const command = `${copyFilesCommand} && ${nodeResetCommand}`;
    // const command = `${nodeResetCommand}`;


    const { stdout, stderr } = shell.exec(command);


    res.status(200).send(stdout);
  } catch (error) {
    console.error("Error running reset script:", error);
    res.status(500).send("Unknown Error");
  }
});

router.post("/node_oldregister", (req, res) => {
  const {
    ipAddress,
    fullip,
    password,
    nodepassword,
    nodeindex,
    walletaddress,
    name
  } = req.body;

  console.log("Name:", name);
  const sourceFolder = `<CHANGE THIS ADDRESS>/main-node/keystore/${name}keystore.json`;
  const firstLoginCommand = `sshpass -p "${password}" ssh -o StrictHostKeyChecking=no ${ipAddress} "exit"`;
  const copyKeystoreCommand = `sshpass -p "${password}" scp ${sourceFolder} ${ipAddress}:/root/keystore.json`;
  const newRegisterCommand = `sshpass -p "${password}" ssh -o StrictHostKeyChecking=no ${ipAddress} ARG2="${nodepassword}" ARG4="${walletaddress}" ARG5="${nodeindex}" ARG6="${fullip}" 'bash -s' < registerold.sh`;
  try {
    const command = `${firstLoginCommand} && ${copyKeystoreCommand} && ${newRegisterCommand}`;



    const { stdout, stderr } = shell.exec(command);



    res.status(200).send(stdout);
  } catch (error) {
    console.error("Error running reset script:", error);
    res.status(500).send("Unknown Error");
  }
});

router.post("/get_logs", (req, res) => {
  const { ipAddress, password } = req.body;
  const currentDate = new Date();
  const formattedDate = currentDate
    .toISOString()
    .replace(/:/g, "-")
    .replace(/\..+/, ""); // Format date as YYYY-MM-DDTHH-MM-SS
  const destinationFolder = `<CHANGE THIS ADDRESS>/main-node/logs/${formattedDate}`;
  const createFolderCommand = `mkdir -p "${destinationFolder}"`;
  const copyFilesCommand = `sshpass -p "${password}" scp ${ipAddress}:/root/moi/log/3W* "${destinationFolder}/"`;

  try {
    const command = `${createFolderCommand} && ${copyFilesCommand}`;
    const { stdout, stderr } = shell.exec(command);

    if (stderr) {
      console.error("Error while copying log file:", stderr);
      res.status(500).send("Error");
    }

    res.status(200).send(stdout);
  } catch (error) {
    console.error("Error running log file copy script:", error);
    res.status(500).send("Unknown Error");
  }
});

app.use("/", router);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
