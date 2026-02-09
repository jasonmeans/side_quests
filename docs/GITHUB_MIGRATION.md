# GitHub Migration Guide

## Target Repositories
1. `skills-learnings`
2. `side_quests`
3. `discogs-app`

## Push Existing `side_quests`
```bash
git add .
git commit -m "restructure playground + add repo strategy"
git push origin main
```

## Initialize and Push `skills-learnings`
```bash
cd repos/skills-learnings
git add .
git commit -m "initial scaffold for skills and learnings operating system"
git remote add origin git@github.com:jasonmeans/skills-learnings.git
git push -u origin main
```

## Initialize and Push `discogs-app`
```bash
cd repos/discogs-app
git add .
git commit -m "initial scaffold for discogs app"
git remote add origin git@github.com:jasonmeans/discogs-app.git
git push -u origin main
```

## Optional: Create Repos via GitHub CLI
```bash
./scripts/create_github_repos.sh jasonmeans private
```

## Cleanup Recommendation
After pushing each dedicated repo, move them out of the `side_quests/repos/` folder into sibling directories on disk to avoid nested-repo confusion.
