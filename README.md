# docker_burp-enterprise

## Installation

1. Download the `Burp Enterprise` installer for `Linux` at:

   https://portswigger-cdn.net/burp/releases/download?product=enterprise&version=2022_4&type=Linux

2. (Flat) Extract the `Burp Enterprise` archive in the `src/` folder.

The `src/` folder should contain the following files:

- `burpsuite_enterprise_linux_v2022_4.sh`
- `response.varfile`

---

## Usage

- To build the `Docker image`:

  ```bash
  docker build -t burp-enterprise:2022.4 .
  ```

- To create a `Docker container`:

  ```bash
  docker run -d -p 8080:8080 burp-enterprise:2022.4
  ```
