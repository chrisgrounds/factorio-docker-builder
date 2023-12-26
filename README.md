# Factorio Docker Builder

![Docker Builder Image](./dalle-readme-image.png)

Ensure you have set the following environment variables:

- FACTORIO_USERNAME
- FACTORIO_TOKEN

These values will come from your [Factorio](https://www.factorio.com) account.

Then simply run the `run.sh` script and docker compose will create a docker container running a factorio server. The values will be injected into `server-settings.json`.

In order to add mods, amend `mods/mod-list.json` with the names of the desired mods.
