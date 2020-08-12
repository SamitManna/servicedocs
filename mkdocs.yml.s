site_name: ROCC Service Docs Portal
copyright: Copyright © 2020, Philips, All rights reserved.
theme: united
markdown_extensions:
    - toc:
        permalink:

pages:
- Home:
    - Welcome: index.md
- Customer Checklist:
  - Installation:
      - Platform Install: 2.0/install/pbp-platform-14.md
  - Integration:
      - Getting Started: 1.2/integration/index.md
      - Platform Configuration: 1.2/integration/config.md
  - Management:
      - Introduction: 2.0/management/index.md
      - Platform Scripts: 2.X/management/platform-scripts.md
      - Common Tasks: 2.0/management/common-tasks.md
      - Configuring Advanced Email: 2.X/management/advanced-email.md
      - Configuring Remote Mounts: 2.X/install/remote-share.md
      - Configuring Advanced PostgreSQL: 2.X/management/advanced-postgresql.md
      - GitHub Setup: 2.X/install/common-git.md
      - Update Service Credentials: 2.X/management/change-password-instructions.md
      - Troubleshooting Guide: 2.X/management/troubleshooting.md
- Product Installation:
  - Platform Installation:      
  - Application Installation:      
  - Integration:
      - Getting Started: 2.1/integration/index.md
      - Platform Configuration: 2.1/integration/config.md
      - Testing and Validation: 2.1/integration/testing-validation.md    
  - Management:
      - User Enrollment: 2.1/management/index.md
      - Device Enrollment: 2.X/management/platform-scripts.md
      - Password Management: 2.1/management/common-tasks.md  
- Troubleshooting:

- Changelogs:
  - Platform :  
    - Platform: changelogs/bridge.md
  - Applications:
    - ROCC aplication: apps/case-indexer.md 

extra_css: [extra.css]
extra_javascript: [jquery.tablesorter.min.js, extra.js]
