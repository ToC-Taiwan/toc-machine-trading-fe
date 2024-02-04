# DEBUG

## Launch json and Tasks json

```bash
mkdir -p .vscode
echo '{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "toc-machine-trading-fe",
            "request": "launch",
            "preLaunchTask": "Pre-Build",
            "type": "dart"
        },
        {
            "name": "toc-machine-trading-fe (profile mode)",
            "request": "launch",
            "preLaunchTask": "Pre-Build",
            "type": "dart",
            "flutterMode": "profile"
        },
        {
            "name": "toc-machine-trading-fe (release mode)",
            "request": "launch",
            "preLaunchTask": "Pre-Build",
            "type": "dart",
            "flutterMode": "release"
        }
    ]
}
' > .vscode/launch.json

echo '{
    "version": "2.0.0",
    "cwd": "${workspaceFolder}",
    "type": "shell",
    "presentation": {
        "close": true
    },
    "tasks": [
        {
            "label": "gen version",
            "command": "dart",
            "args": [
                "./scripts/gen_version.dart",
            ],
        },
        {
            "label": "Pre-Build",
            "dependsOrder": "sequence",
            "dependsOn": [
                "gen version",
            ]
        }
    ]
}
' > .vscode/tasks.json
```
