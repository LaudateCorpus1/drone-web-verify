# drone-web-verify
[![Build Status](https://cloud.drone.io/api/badges/viant/drone-web-verify/status.svg)](https://cloud.drone.io/viant/drone-web-verify)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/viant/drone-web-verify/blob/master/LICENSE)

Drone plugin to verify web deployments

## Setup

Create a `drone_build_version.html` file during the deploy process. Example:

```bash
echo "$DRONE_BUILD_NUMBER" > www/drone_build_version.html"
```

## Usage

The following parameter is required:

* `url` The base url for the `drone_build_version.html`

Optional:

* `timeout` Timeout value. Default is 10m.

* `version_file_path` Path to the `drone_build_version.html` file. Defaults to working directory.

## Example

```yaml
kind: pipeline
name: default

steps:

- name: verify
  image: viant/drone-web-verify
  settings:
    url: https://www.mywebsite.com
```
