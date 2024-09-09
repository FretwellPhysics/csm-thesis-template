# Provenance Tracking Recipe

To track file/data provenance with Git Annex, you will need:
1. A code repo responsible for generating output such as the figures you use here
1. A code repo responsible for generating export e.g. a thesis (here)
1. A "data" repo which tracks symlinks to data files which uses git annex behind the scenes to safely store and share the actual file contents.

The "data" repo can have many branches, where each branch is what I call a "dataset" (or data "tree" in git nomenclature). Separating out the tracking of datasets from code makes the data repo
extraordinarily lightweight, which it needs to be because it will be cloned in myriad places.

In short the data repo is a "submodule" of both the data generator (1) and the data consumers (2). The data repo is located in the `out/` folder of the generator and the `in/` folder(s) of the
consumer(s).

For more advanced systems where you're running code routinely against inputs to create outputs, DataLad provides a framework for doing this reproducibly. This recipe was based on DataLad's formalisms.
