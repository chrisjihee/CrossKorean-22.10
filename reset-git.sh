# create
mkdir -p pretrained finetuned predicted;

# commit & push
git init; git add .git* *; git commit -m "CrossKorean (2022.10)";
git remote add origin git@github.com:chrisjihee/CrossKorean-22.10.git;
git push --set-upstream origin master;

