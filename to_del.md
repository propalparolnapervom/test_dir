# Concourse Build Pipeline

## Concourse CI

https://concourse-ci.org/

## Open Ocean Studio concourse instance

https://concourse.tools.devopenocean.studio/

This repo contains the concourse build pipeline definitions for many of the 90poe packages, services, CLI tools, modules etc.

As well as containing the pipeline definitions it also contains pipeline templates and scripts that take arguments to create new pipeline definitions and push these to concourse.

Pipelines are automatically updated each morning.

## Creating and changing pipelines

To change a pipeline simple change the pipeline template and raise a PR with those changes.

To create a pipeline add a new line to the [pipelines file](pipelines.txt) in the format:

`{concourse team}:{template name}:{repo name}:{pipeline name}:{application name}`

and raise a PR with your changes.

Once a PR is merged to master you may manually create pipeline with following instructions.

For repositories that contain more than one application (e.g. ninety-connector), you can specificy `application name` to target a specific application in your repo. If your repository only contains one application, you don't need to define it.

## Updating pipelines manually

Download fly:

https://github.com/concourse/fly

**NOTE**: Don't get caught out by the instructions to build via Go, follow the guide to download via the (very discreet)
button in the bottom right of the Concourse UI.

This will get a binary that you can put in your path.

```bash
shell> cp ~/Downloads/fly /usr/local/bin
shell> chmod a+xw /usr/local/bin/fly
```

Then change dir to scripts:

```bash
shell> cd scripts
```

At this point you should run the [update all pipelines script](scripts/update-all-pipelines.sh) which is idempotent.

```bash
shell>  ./update-all-pipelines.sh ../pipelines.txt https://concourse.tools.devopenocean.studio/ 90poe_all
```
You should see the following response:

```bash
logging in to team 'all'

navigate to the following URL in your browser:

    https://concourse.tools.devopenocean.studio/auth/github?team_name=all&fly_local_port=54969

or enter token manually:
```

Once you navigate to the given URL the login process is automatic, and when you return to
your shell you'll find the following response:

```bash
target saved
```

Updating steps then will proceeded automatically.

Eventually resulting output will show you the what changes are being applied.

### Deleting pipelines


```bash
shell>  .fly -t 90poe_all destroy-pipeline -p {pipeline name}
```

