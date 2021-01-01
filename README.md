# driveload
Upload file from internet to Google Drive using GitHub Actions

## Usage
For uploading a file to Google Drive, make a commit in this repository with following command:
```bash
git commit --allow-empty -m "driveload: example.com/path/to/file/url/thing.txt file_name.txt"
```

This commit message is parsed as: `driveload: file_url file_name`

File on given url is saved in Google Drive in `driveload` folder with `file_name` as name.

Example commit:
```bash
git commit --allow-empty -m "driveload: https://speed.hetzner.de/1GB.bin test_file_1GB.bin"
```

## Setup

### 1. Setup Google Drive client on your local machine. This will be used later. Follow this: https://github.com/odeke-em/drive
### 2. Setup GitHub Repository with this action
  - Fork / Copy this repo in your GitHub account
  - From your Google Drive client folder (which you must have got in step 1), copy content of `.gd/credentials.json` file.
  - Add this copied josn as [secret](https://docs.github.com/en/free-pro-team@latest/actions/reference/encrypted-secrets) in your fork repo with name `DRIVE_CRED`. Enclose this json with single quoat (`'`), like `'{"client_id": "...", "client_secret": "...", "refresh_token": "..."}'`

## Credits
- GitHub Actions
- https://github.com/axel-download-accelerator/axel (file downloader)
- https://github.com/odeke-em/drive (Google Drive client)
