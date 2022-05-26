# docker_burp-enterprise

## Usage

- To build the `Docker image`:

  ```bash
  docker build -t burp-enterprise:2022.4 .
  ```

- To create a `Docker container`:

  ```bash
  docker run -d -p 8080:8080 burp-enterprise:2022.4
  ```

---

## TODO

- [ ] Reduce the `Docker image` size.
- [x] Fetch/download the installer directly from PortSwigger's website and unzip it.
