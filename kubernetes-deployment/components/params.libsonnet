{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "workflow-initiator": {
      image: "auroradevacr.azurecr.io/gordo-infrastructure/gordo-deploy:0.27.0",
      name: "ks-workflow-initiator",
      serviceAccountName: "gordo-workflow-runner",
      namespace: "kubeflow",
      roleName: "submit-workflows-role",
      projectName: "iroc-production",
      tagFetcherVersion: "17cdd4b6",
      modelBuilderVersion: "17cdd4b6",
      modelServerVersion: "17cdd4b6",
      watchmanVersion: "17cdd4b6",
      clientVersion: "17cdd4b6"
    },
  },
}
