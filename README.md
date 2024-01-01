
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

## Contributing

We welcome contributions, especially for adding support for new operating systems. To contribute, follow these steps:

1. Under the `functions` folder, create a tree structure for the OS you want to support. For example, for Fedora Kinoite version 39, create: `bash-functions/functions/fedora/kinoite/39`. The path should follow this format: `functions/$(ID=fedora)/$(VARIANT_ID=kinoite)/$(VERSION_ID=39)`.

2. Inside the newly created folder, create a symlink to the autoloader script:
   ```bash
   ln -s ../../../../autoloader/__loader.sh __loader.sh
   ```
   Your directory structure should look like this:
   ```
   /functions/fedora/kinoite/39
   ├── ...
   └── __loader.sh -> ../../../../autoloader/__loader.sh
   ```

3. Start adding directories and `.sh` files that will be autoloaded. For more information, refer to the [bash-functions-autoloader README](https://github.com/masterjg/bash-functions-autoloader/blob/main/README.md).

## License

This project is licensed under the GNU Affero General Public License (AGPL). For more details, see the [LICENSE](LICENSE) file.
