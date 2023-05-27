CompoundCuboidStructures
======

## Initial remarks

This is the initial version of the project.

### File structure

```
CompoundCuboidStructures/
├── demos
│   └── notebooks
├── src
├── srp
├── test
├── Manifest.toml
└── Project.toml
```
The essential role of these files and directories are as follows:
- `LICENSE`: License of the project. It is the GNU General Public License v3.0.
- `README.md`: The file you are reading right now.
- `demos`: Subdirectory for project specific demo examples.
- `notebooks`: Subdirectory for project specific demo examples, that are Pluto or Jupyter notebooks.
- `src`: Subdirectory for project specific code as part of the QuBusSimulation package representing the project.
- `srp`: Subdirectory for project specific scripts, that can be called after precompiling from outside the project.
- `test`: Unit tests for project code in `src`.
- `Project.toml`: The project file describes the project on a high level, for example the package/project dependencies and compatibility constraints are listed in the project file. See the [documentation](https://pkgdocs.julialang.org/v1/toml-files/#Project-and-Manifest)
- `Manifest.toml`:  The manifest file is an absolute record of the state of the packages in the environment. It includes exact information about (direct and indirect) dependencies of the project. Given a Project.toml + Manifest.toml pair, it is possible to instantiate the exact same package environment, which is very useful for reproducibility. See the [documentation](https://pkgdocs.julialang.org/v1/toml-files/#Manifest.toml)

