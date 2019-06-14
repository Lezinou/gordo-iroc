{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "workflow-initiator": {
      image: "auroradevacr.azurecr.io/gordo-infrastructure/gordo-deploy:0.23.1.dev3_g5179f86",
      name: "ks-workflow-initiator",
      serviceAccountName: "gordo-workflow-runner",
      namespace: "kubeflow",
      roleName: "submit-workflows-role",
      projectName: "iroc-aery",
      tagFetcherVersion: "0.3.0",
      modelBuilderVersion: "7c7055ca-dev",
      modelServerVersion: "0.13.0",
      watchmanVersion: "0.13.0"
    },
  },
}
