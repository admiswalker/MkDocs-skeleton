
updateDocs:
	@(cd ./src; mkdocs build)
	@(mkdir -p ./docs)
	@(cp -r ./src/site/* ./docs)
	@(git add ./docs)
	@(git commit -m 'Update docs')
	@(git push origin main)

