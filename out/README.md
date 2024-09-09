# Out Directory

This is for finalized output of this repository (i.e. the rendered PDF).

You can use Git Annex to track the PDF without tracking its contents. This is generally a good idea because repos should only track the code which generates things, not the
things the code can generate. This is both because it's redundant to track the latter, and git's diff algorithms cannot handle binary files well - which is often the kind of data you output/render/compile from a repository.

You can even go so far as to make out its own submodule using Git Annex to enable importing this submodule elsewhere for consuming of this repo's output. See [Provenance Tracking Recipe](../docs/Provenance-Tracking-Recipe.md) for how/why to do this.
