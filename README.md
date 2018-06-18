# Home Assistant

Local changes made for running Home Assistant in my local environment, adding:
 * Docker support (with docker-compose)
 * Patch for pydaikin throwing exceptions for some models (e.g. BRP069B42)
 * Configuration for pass-through of an Aeotec Z-Stick Gen5 (Z-Wave)

### Deployment

```
docker-compose up -d
```

### Notes
 * `entity_registry.yaml` is populated with "unknown" entries for Z-Wave
   devices before HA has had a chance to identify them. These can be manually
   edited, and HA restarted, for sensible entity names.
