## Notify slack channel if deployment fails

The `notify-slack` action sends a message to the target slack channel notifying if the Github Actions workflow fails at any step. The message will look like this "Deployment of `TARGET SERVICE NAME` failed. Please investigate: `URL TO FAILED WORKFLOW IN GHA`"

Required inputs:
- `webhook`: the webhook URL should be stored as a repository secret and passed into the action as an input, using the `secrets` context to ensure it is masked in logs
- `target_service`: the service the pipeline is trying to deploy

The action step should include the following conditional `needs` block which lists every preceding job in the workflow to ensure that the action always runs at the end of a failing workflow, but does not run in a successful workflow
```
needs:
      - build
      - deploy (etc...)
    if: ${{ always() && contains(needs.*.results, 'failure') }}
```