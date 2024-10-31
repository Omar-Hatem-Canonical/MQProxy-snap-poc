# MQProxy Snap

This reposiory snaps the [MQProxy](https://github.com/absmach/mproxy) repository. 

## Issues
- `.env` file and `.ssl` folder are needed for the application to run, but the staging stage does not copy them. The current solution is to override the stage and copy the files manually. A proposed solution is the use of the `configure` hook and adding a `layout` section.

## To-Do
- Run the demo present in the repository and test if it is working.
- Switch confinement levels and check if it is still functional
- Connect to a MQTT broker and check if the hooks are working.