
updateDocs:
	@(cd ./src; mkdocs build)
	@(mkdir -p ./site)
	@(cp -r ./src/site/ ./)
	@(git add ./site)
	@(git commit -m 'Update docs')
	@(git push origin master)

