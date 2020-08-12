# service-docs

Private documentation for how to service AI Bridge, including:

* Installation
* Integration
* Management
* Component changelogs
* App changelogs

## Overview

The documentation is statically generated using [MkDocs](http://www.mkdocs.org) and published to [Netlify](https://www.netlify.com) with [HTTP BA](https://en.wikipedia.org/wiki/Basic_access_authentication) to restrict access.

Some pages (e.g. the installation and integration instructions) are manually written and maintained, while others (e.g. the CHANGELOGs) are copied from an external source.

## Maintenance and Publishing

### Environment Requirements

* Bash, [Docker](https://www.docker.com/get-started), [Docker Compose](https://docs.docker.com/compose/install/)

```bash
#in the root of the project
docker-compose up -d
```

This will start a webserver running on [http://localhost:8000](http://localhost:8000) where you can view the site. Edit `docker-compose.yml` port section if you would configure a different port.

### Configuration

If you are **adding or removing pages, you will need to edit `mkdocs.yml`** at the root to update the navigation.

There is a script to help maintain the externally sourced data (currently all changelogs). This script has hard-coded paths to work in a local environment. These paths needs to be manually updated by any maintainer who wants to publish updates, so make the necessary changes for your local environment before running. **Do not commit these changes**. After updating the paths, run:

`./update-changelogs-etc.sh`

### Authentication

To update the HTTP BA list, edit the `docs/_headers` file per the [Netlify docs](https://www.netlify.com/docs/headers-and-basic-auth).

### Review and Publish

Please review changes with the team before publishing. Key items to review:

- [ ] new links work
- [ ] consistent language and style
- [ ] consistent formatting of rendered pages (test with **`mkdocs serve`** and view locally)
- [ ] new pages added to navigation
- [ ] externally sourced documentation updated to desired version

When review is passed, build and deploy with `./deploy-site.sh`

## TODO

### Deployment

- [ ] Document process to update `data-manager` and HL7/Bridge messaging specifications

### Formatting

- [ ] implement the request in [BRIDGE-186](https://analytical.atlassian.net/browse/BRIDGE-186) to allow for printing these pages with a logo/watermark
- [ ] implement the request in [BRIDGE-196](https://analytical.atlassian.net/browse/BRIDGE-196) to allow for filtering tables
