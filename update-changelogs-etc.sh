#!/bin/bash
# paths
BASE="/Users/mdaly/AI/github"
DEST_RT="$BASE/service-docs/docs"
SRC_BASE="$BASE/harbinger-dev"

# platform
cp -vf $SRC_BASE/CHANGELOG.md $DEST_RT/changelogs/bridge.md
cp -vf $SRC_BASE/apm/CHANGELOG.md $DEST_RT/changelogs/apm.md
cp -vf $SRC_BASE/cometd/CHANGELOG.md $DEST_RT/changelogs/cometd.md
cp -vf $SRC_BASE/data-manager/CHANGELOG.md $DEST_RT/changelogs/data-manager.md
cp -vf $SRC_BASE/data-model/CHANGELOG.md $DEST_RT/changelogs/data-model.md
cp -vf $SRC_BASE/general-et/CHANGELOG.md $DEST_RT/changelogs/general-et.md
cp -vf $SRC_BASE/hl7-parser/CHANGELOG.md $DEST_RT/changelogs/hl7-parser.md
cp -vf $SRC_BASE/indexer/CHANGELOG.md $DEST_RT/changelogs/indexer.md
cp -vf $SRC_BASE/service-tools/CHANGELOG.md $DEST_RT/changelogs/service-tools.md
cp -vf $SRC_BASE/sdk/CHANGELOG.md $DEST_RT/changelogs/sdk.md
#cp -vf $SRC_BASE/pacs-publisher/CHANGELOG.md $DEST_RT/changelogs/pacs-publisher.md
#cp -vf $SRC_BASE/pbmail/CHANGELOG.md $DEST_RT/changelogs/pbmail.md
#cp -vf $SRC_BASE/pbreport/CHANGELOG.md $DEST_RT/changelogs/pbreport.md
#cp -vf $SRC_BASE/quartz/CHANGELOG.md $DEST_RT/changelogs/quartz.md

# apps changelog
cp -vf $BASE/airflow/CHANGELOG.md $DEST_RT/apps/patient-flow.md
cp -vf $BASE/analytics-core/CHANGELOG.md $DEST_RT/apps/analytics-core.md
cp -vf $BASE/teaching-files/CHANGELOG.md $DEST_RT/apps/case-indexer.md
cp -vf $BASE/scanner-utilization/CHANGELOG.md $DEST_RT/apps/scanner-utilization.md
cp -vf $BASE/report-search/CHANGELOG.md $DEST_RT/apps/report-search.md
cp -vf $BASE/checklist/CHANGELOG.md $DEST_RT/apps/checklist.md
cp -vf $BASE/sweep/CHANGELOG.md $DEST_RT/apps/exam-resolver.md
cp -vf $BASE/reflect/CHANGELOG.md $DEST_RT/apps/connect.md
cp -vf $BASE/virtual-hospital/CHANGELOG.md $DEST_RT/apps/virtual-hospital.md
cp -vf $BASE/progress/CHANGELOG.md $DEST_RT/apps/resident-review.md
cp -vf $BASE/threshold-alert/CHANGELOG.md $DEST_RT/apps/threshold-alert.md
cp -vf $BASE/jhhs-advanced-peer-review/CHANGELOG.md $DEST_RT/apps/peer-learning.md
#cp -vf $BASE/practice/CHANGELOG.md $DEST_RT/apps/practice.md

# apps install
cp -vf $BASE/airflow/INSTALL.md $DEST_RT/2.0/install/patient-flow.md
cp -vf $BASE/teaching-files/INSTALL.md $DEST_RT/2.0/install/case-indexer.md
cp -vf $BASE/analytics-core/INSTALL.md $DEST_RT/2.0/install/analytics-core.md
cp -vf $BASE/scanner-utilization/INSTALL.md $DEST_RT/2.0/install/scanner-utilization.md
cp -vf $BASE/report-search/INSTALL.md $DEST_RT/2.0/install/report-search.md
cp -vf $BASE/checklist/INSTALL.md $DEST_RT/2.0/install/checklist.md
cp -vf $BASE/sweep/INSTALL.md $DEST_RT/2.0/install/exam-resolver.md
cp -vf $BASE/reflect/INSTALL.md $DEST_RT/2.0/install/connect.md
cp -vf $BASE/virtual-hospital/INSTALL.md $DEST_RT/2.0/install/virtual-hospital.md
cp -vf $BASE/progress/INSTALL.md $DEST_RT/2.0/install/resident-review.md
cp -vf $BASE/threshold-alert/INSTALL.md $DEST_RT/2.0/install/threshold-alert.md
cp -vf $BASE/jhhs-advanced-peer-review/INSTALL.md $DEST_RT/2.0/install/peer-learning.md
#cp -vf $BASE/practice/INSTALL.md $DEST_RT/2.0/install/practice.md