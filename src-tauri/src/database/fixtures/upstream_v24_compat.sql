-- Affected-table DDL from farion1231/cc-switch at
-- 8656ebd91f3eba631837126e29df71e8353b7e43 (schema 24).
-- Independent of the CLI's table definitions and migration implementation.
CREATE TABLE mcp_servers (
    id TEXT PRIMARY KEY, name TEXT NOT NULL, server_config TEXT NOT NULL,
    description TEXT, homepage TEXT, docs TEXT, tags TEXT NOT NULL DEFAULT '[]',
    enabled_claude BOOLEAN NOT NULL DEFAULT 0, enabled_codex BOOLEAN NOT NULL DEFAULT 0,
    enabled_gemini BOOLEAN NOT NULL DEFAULT 0, enabled_grokbuild BOOLEAN NOT NULL DEFAULT 0,
    enabled_opencode BOOLEAN NOT NULL DEFAULT 0,
    enabled_mcode BOOLEAN NOT NULL DEFAULT 0,
    enabled_agy BOOLEAN NOT NULL DEFAULT 0,
    enabled_kimi BOOLEAN NOT NULL DEFAULT 0,
    enabled_dsh BOOLEAN NOT NULL DEFAULT 0,
    enabled_hermes BOOLEAN NOT NULL DEFAULT 0,
    enabled_pi BOOLEAN NOT NULL DEFAULT 0,
    enabled_omp BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE skills (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    directory TEXT NOT NULL,
    repo_owner TEXT,
    repo_name TEXT,
    repo_branch TEXT DEFAULT 'main',
    readme_url TEXT,
    enabled_claude BOOLEAN NOT NULL DEFAULT 0,
    enabled_codex BOOLEAN NOT NULL DEFAULT 0,
    enabled_gemini BOOLEAN NOT NULL DEFAULT 0,
    enabled_grokbuild BOOLEAN NOT NULL DEFAULT 0,
    enabled_opencode BOOLEAN NOT NULL DEFAULT 0,
    enabled_mcode BOOLEAN NOT NULL DEFAULT 0,
    enabled_agy BOOLEAN NOT NULL DEFAULT 0,
    enabled_kimi BOOLEAN NOT NULL DEFAULT 0,
    enabled_dsh BOOLEAN NOT NULL DEFAULT 0,
    enabled_hermes BOOLEAN NOT NULL DEFAULT 0,
    installed_at INTEGER NOT NULL DEFAULT 0,
    content_hash TEXT,
    updated_at INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE session_log_sync (
    file_path TEXT PRIMARY KEY,
    last_modified INTEGER NOT NULL,
    last_line_offset INTEGER NOT NULL DEFAULT 0,
    last_synced_at INTEGER NOT NULL,
    last_byte_offset INTEGER,
    last_tail_fingerprint INTEGER,
    parser_state TEXT
);
