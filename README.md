About tiledb-feedstock
======================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/tiledb-feedstock/blob/main/LICENSE.txt)

Home: http://tiledb.io

Package license: MIT

Summary: TileDB sparse and dense multi-dimensional array data management

Development: https://github.com/TileDB-Inc/TileDB

Documentation: http://docs.tiledb.io

TileDB is an efficient multi-dimensional array management system which introduces
a novel on-disk format that can effectively store dense and sparse array data with
support for fast updates and reads. It features excellent compression, and an efficient
parallel I/O system with high scalability.


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2075&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2075&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2075&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_aarch64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2075&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_ppc64le_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2075&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2075&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2075&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/tiledb-feedstock?branchName=main&jobName=win&configuration=win%20win_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-tiledb-green.svg)](https://anaconda.org/tiledb/tiledb) | [![Conda Downloads](https://img.shields.io/conda/dn/tiledb/tiledb.svg)](https://anaconda.org/tiledb/tiledb) | [![Conda Version](https://img.shields.io/conda/vn/tiledb/tiledb.svg)](https://anaconda.org/tiledb/tiledb) | [![Conda Platforms](https://img.shields.io/conda/pn/tiledb/tiledb.svg)](https://anaconda.org/tiledb/tiledb) |

Installing tiledb
=================

Installing `tiledb` from the `tiledb/label/nightlies` channel can be achieved by adding `tiledb/label/nightlies` to your channels with:

```
conda config --add channels tiledb/label/nightlies
conda config --set channel_priority strict
```

Once the `tiledb/label/nightlies` channel has been enabled, `tiledb` can be installed with `conda`:

```
conda install tiledb
```

or with `mamba`:

```
mamba install tiledb
```

It is possible to list all of the versions of `tiledb` available on your platform with `conda`:

```
conda search tiledb --channel tiledb/label/nightlies
```

or with `mamba`:

```
mamba search tiledb --channel tiledb/label/nightlies
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search tiledb --channel tiledb/label/nightlies

# List packages depending on `tiledb`:
mamba repoquery whoneeds tiledb --channel tiledb/label/nightlies

# List dependencies of `tiledb`:
mamba repoquery depends tiledb --channel tiledb/label/nightlies
```




Updating tiledb-feedstock
=========================

If you would like to improve the tiledb recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`tiledb` channel, whereupon the built conda packages will be available for
everybody to install and use from the `tiledb` channel.
Note that all branches in the conda-forge/tiledb-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks, and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@akrherz](https://github.com/akrherz/)
* [@ihnorton](https://github.com/ihnorton/)
* [@jdblischak](https://github.com/jdblischak/)
* [@nguyenv](https://github.com/nguyenv/)
* [@shelnutt2](https://github.com/shelnutt2/)
* [@teo-tsirpanis](https://github.com/teo-tsirpanis/)
* [@xylar](https://github.com/xylar/)

