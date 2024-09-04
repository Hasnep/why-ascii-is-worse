root_dir := justfile_directory()
src_dir := root_dir / "src"
build_dir := root_dir / "build"

build:
    mkdir -p {{ build_dir }}
    cp -r {{ src_dir / "*" }} {{ build_dir }}
    pandoc {{ src_dir / "why-ascii-is-worse.md" }} --from=markdown --to=html --output={{ build_dir / "blogpost.html" }}
