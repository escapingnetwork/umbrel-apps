# 32 byte long string used for encrypting TOTP secrets at rest using AES256-GCM. Must not change on app restart.
export APP_PLAUSIBLE_VAULT_KEY=$(openssl dgst -sha256 -binary <<< "$(derive_entropy "env-${app_entropy_identifier}-APP_VAULT_KEY")" | base64)