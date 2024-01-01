
# Bash Functions Collection

Efficiently automate your daily tasks with our versatile collection of Bash functions, all easily accessible with the bash-functions-autoloader.

## Author

**Marius Guščius**

- E-mail: [marius.guscius1@gmail.com](mailto:marius.guscius1@gmail.com)

## Getting Started

### Prerequisites

- Bash shell
- Git

### Installation

1. Clone this repository (including all submodules) into your desired directory within your home (`${HOME}`) directory.

   ```bash
   git clone --recurse-submodules git@github.com:masterjg/bash-functions.git ${HOME}/bash-functions
   ```

2. Add the autoloader script to your shell rc file (`.bashrc`, `.bash_profile`, etc.):

   ```bash
   echo 'source ${HOME}/bash-functions/init.sh' >> ${HOME}/.bashrc
   ```

3. Reload your shell configuration:

   ```bash
   source ${HOME}/.bashrc
   ```

## Usage

After installation, the bash functions from this collection are automatically loaded and can be used in your shell.

## License

This project is licensed under the GNU Affero General Public License (AGPL). For more details, see the [LICENSE](LICENSE) file.
