# Keeper DApp

**Keeper** is a decentralized note-taking application built on the **Internet Computer (ICP)** blockchain. The app allows users to securely create, view, and remove notes. **Keeper** offers a decentralized alternative to traditional note-taking apps like Google Keep, where notes are stored immutably and securely on the blockchain.

The project is built using a **React.js** frontend and **Motoko** for smart contract logic on **ICP**.

## Features

- **Create Notes**: Add new notes with a title and content.
- **Read Notes**: View a list of all created notes.
- **Remove Notes**: Delete notes by ID.
- **Decentralized**: Notes are stored on the **Internet Computer (ICP)**, ensuring they are secure and tamper-proof.

## Tech Stack

- **Frontend**: React.js
- **Backend**: Motoko (smart contracts on ICP)
- **Blockchain**: Internet Computer (ICP)
- **Other**: Dfinity SDK (`dfx`), Node.js

## Prerequisites

Make sure you have the following tools installed before setting up the project:

1. **Node.js** (version 16 or later)
2. **Dfinity SDK** (`dfx`) for deploying Motoko smart contracts
3. **React** for the frontend
4. **Ubuntu** (via WSL on Windows or any Linux-based machine)

## Installation and Setup

Follow the steps below to get started with the **Keeper DApp**.

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/nikithayy/Keeper-DApp.git
cd Keeper-DApp
```


2. **Install Dependencies**:
    - Install **Node.js** dependencies for the React frontend:
      ```bash
      npm install
      ```

    - Install **Motoko** dependencies and set up your Dfinity environment:
      ```bash
      dfx new keeper
      cd keeper
      dfx start
      ```

3. **Deploy the Project**:
   - Deploy your project to the Internet Computer blockchain:
   ```bash
   dfx deploy
   ```
   This will deploy the Motoko smart contract to ICP and ensure that your notes DApp is ready for interaction.

4. **Run the Application**:
    - Start the frontend (React app):
      ```bash
      npm start
      ```

    - Open a new terminal and start the backend (Motoko canister):
      ```bash
      dfx deploy
      ```

4. **Access the DApp**: Open your browser and navigate to `http://localhost:8080/` to interact with the DApp.

## Motoko Smart Contract: DKeeper

The **Keeper DApp** utilizes a smart contract called **DKeeper**. This contract manages the creation, reading, and removal of notes. Below is an overview of the functions in the contract:

- createNote(titleText: Text, contentText: Text): Adds a new note with a title and content.

- readNotes(): Retrieves all stored notes.

- removeNote(id: Nat): Removes a note by its ID.