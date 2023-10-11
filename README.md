# ctf_nc

This repository contains a Docker-based environment for deploying Capture The Flag (CTF) challenges.

## Getting Started

To set up and deploy your CTF challenge, follow these steps:

### Configuration

1. Place your CTF challenge files in the `src` folder. These files will be copied to `/challenge` in the container. Don't forget to update the flag as needed.

2. Edit the "listen.sh" file to replace "./test" with your specific command that launches the CTF challenge.

3. Optionally, you can customize the environment by editing the "Dockerfile," "listen.sh" files.

### Build

Build your Docker image by running the following command:

```bash
docker build -t <CHALLENGE_NAME> .
```

### Run

Run your CTF challenge in a Docker container by executing:

```bash
docker run -p "0.0.0.0:<NETCAT_PORT>:9999" <CHALLENGE_NAME>
```

Replace `<CHALLENGE_NAME>` with the name of your challenge.
Replace `<NETCAT_PORT>` with the port number you wish to connect to via netcat.


### Connecting

Connect to your challenge by doing:

```bash
nc localhost <NETCAT_PORT>
```

Replace `<NETCAT_PORT>` with the port number you mentioned in the **RUN** step.

## Acknowledgements

This project was inspired by Eadom's [ctf_xinetd](https://github.com/Eadom/ctf_xinetd) repository. Their work served as a valuable reference for creating this environment.

## License

This project is licensed under the [MIT License](LICENSE) - see the [LICENSE](LICENSE) file for details.
