#!/bin/bash
mkdocs build --clean
netlify deploy --dir=site ${1}
