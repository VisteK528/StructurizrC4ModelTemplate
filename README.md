# C4 Model Template (Structurizr)

A minimal starting point for modelling software systems with the [C4 model](https://c4model.com),
using the [Structurizr DSL](https://docs.structurizr.com/dsl) and Structurizr Local running in Docker.

The repository ships with a small example (an online shop) showing a System Context and a Container view.
Replace it with your own system.

## Quick start

1. Click **Use this template** on GitHub (or clone the repo).
2. Start Structurizr:
   ```sh
   docker compose up -d
   ```
3. Open <http://localhost:8080>.

Edit the `.dsl` files and the diagrams refresh automatically in the browser.
Stop with `docker compose down`.

> `docker-compose.yml` runs the container as `1000:1000` so generated files belong to your user.
> If your UID/GID differ (`id -u`, `id -g`), change the `user:` line.

## Structure

| Path                     | Purpose                                                                               |
| ------------------------ | ------------------------------------------------------------------------------------- |
| `workspace.dsl`          | Workspace definition: views and styles                                                |
| `model/*.dsl`            | Model elements (people, systems, containers, relationships), pulled in via `!include` |
| `structurizr.properties` | Structurizr Local settings (auto-refresh, editable)                                   |
| `docker-compose.yml`     | Runs Structurizr Local on port 8080                                                   |

Add more model files under `model/` and include them from `workspace.dsl`.

## Layout

Views use `autoLayout` by default, so diagrams stay tidy as the model changes.

To arrange elements by hand, remove the `autoLayout` line from a view, then drag elements in the browser
and save. Structurizr stores the positions in `workspace.json` — commit that file to keep your layout.
(`.structurizr/` holds runtime data such as the search index and logs and is git-ignored.)
