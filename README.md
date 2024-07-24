<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/n3ddu8/nest-legacy">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Nest Legacy</h3>

  <p align="center">
    An Ubuntu 22.04 implementation of Nest, my personal development environment. For working with my legacy projects that I haven't yet converted to work with Alpine Linux. I will not be activly maintaining this environment and plan to archive it once all my projects are implemented in Alpine.
    <br />
    <br />
    <a href="https://github.com/n3ddu8/nest-legacy/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/n3ddu8/nest-legacy/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

An Ubuntu:22.04 implementation of my development environment, built on my [Ubuntu Base](ubuntu-base) container image. Additional packages include:
* git
* npm
* zsh
* oh-my-zsh
* zsh-syntax-highlighting
* zsh-autosuggestions
* powerlevel10k theme
* git
* neovim (latest built from source)
* [astronvim](astronvim) (with some modifications)

### Built With

* [Docker](https://www.docker.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

While this image can be used by itself, it is intended to be used With [DevPod](devpod), a cross-platform, open-source implementation of [Codespaces](codespaces). The remainder of this section assumes you are using devpod-cli on an x86 Linux distro, for all other installation methods please see the [DevPod Documentation](devpod-docs).

### Prerequisites

* Docker
  * [Get Docker](https://docs.docker.com/get-docker/)

### Installation

* install devpod-cli
```shell
curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64" && sudo install -c -m 0755 devpod /usr/local/bin && rm -f devpod
```

* configure a Docker provider
```shell
devpod provider add docker
```

* launch development environment
  * If using VSCode amend `--ide none` to `--ide vscode` or `--ide openvscode` to start VSCode in a browser.
```shell
devpod up github.com/n3ddu8/nest-legacy --ide none
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## Usage

```shell
ssh nest-legacy.devpod
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

As I've moved my development environment over to Alpine, I don't plan on activly maintaining this project, however feel free to fork it.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments



<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/n3ddu8/nest-legacy.svg?style=for-the-badge
[contributors-url]: https://github.com/n3ddu8/nest-legacy/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/n3ddu8/nest-legacy.svg?style=for-the-badge
[forks-url]: https://github.com/n3ddu8/nest-legacy/network/members
[stars-shield]: https://img.shields.io/github/stars/n3ddu8/nest-legacy.svg?style=for-the-badge
[stars-url]: https://github.com/n3ddu8/nest-legacy/stargazers
[issues-shield]: https://img.shields.io/github/issues/n3ddu8/nest-legacy.svg?style=for-the-badge
[issues-url]: https://github.com/n3ddu8/nest-legacy/issues
[license-shield]: https://img.shields.io/github/license/n3ddu8/nest-legacy.svg?style=for-the-badge
[license-url]: https://github.com/n3ddu8/nest-legacy/blob/master/LICENSE.txt
[ubuntu-base]: https://github.com/n3ddu8/ubuntu-base
[astronvim]: https://astronvim.com/
[devpod]: https://devpod.sh/
[devpod-docs]: https://devpod.sh/docs/what-is-devpod
[codespaces]: https://github.com/features/codespaces
