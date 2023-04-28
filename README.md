### SkillBuilder Backend

[![Build Status](https://dev.azure.com/skillbuilder/SkillBuilder%20Platform/_apis/build/status/Skillbuilder%20Backend?branchName=refs%2Fpull%2F152%2Fmerge)](https://dev.azure.com/skillbuilder/SkillBuilder%20Platform/_build/latest?definitionId=1&branchName=refs%2Fpull%2F152%2Fmerge)

### Installation

SkillBuilder requires [Node.js](https://nodejs.org/) v10.0+ to run.

Install the dependencies and start the server.

```sh
$ cd skillbuilder-backend
$ npm install
$ npm run watch
```

Installation for production
```sh
$ cd skillbuilder-backend
$ npm install --only=prod
$ npm start
```

Build the project "**** tsc command will take some time"
```sh
$ npm run shell
$ npx tsc
$ pm2 startOrReload && pm2 log
```

Run LINT command apply all the rules before GIT PUSH
```sh
npm run lint
```

Run the migrations
```sh
$ typeorm migration:run
```

Create a new migration (only for local)
```sh
$ typeorm migration:create -n name-of-the-file
$ Update the migration file with the queries & update the entity file too
$ Compile the ts files
* typeorm migration:run
```

Revert a migration - Reverts the latest migration file. (Keep running the cmd to revert files in descending order)
```sh
$ typeorm migration:revert
```
Migration reference - https://github.com/typeorm/typeorm/blob/master/docs/migrations.md#user-content-generating-migrations


Stripe support - For running Stripe locally to receive the webhook responses use Stripe CLI.

Stripe CLI reference - https://stripe.com/docs/stripe-cli