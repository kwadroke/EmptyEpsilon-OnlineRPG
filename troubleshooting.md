# Troubleshooting

## Errors

```
Failed to bind listener socket to port 8080
```

This usually happens on Linux if the server is restarted before the socket on 8080 closes. This can cause the httpserver not to work and will not allow new ships to be launched (or any other access) via the GUI.
**Fix:** Wait for the socket to close and restart server. This could be a couple of minutes.
