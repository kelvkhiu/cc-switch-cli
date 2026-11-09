-- Schema 23 affected-table DDL: the pinned schema-24 upstream definitions
-- with the v23 enabled_omp MCP column introduced by the v22 -> v23 migration.
CREATE TABLE mcp_servers (
    id TEXT PRIMARY KEY, name TEXT NOT NULL, server_config TEXT NOT NULL,
    description TEXT, homepage TEXT, docs TEXT, tags TEXT NOT NULL DEFAULT '[]',
    enabled_claude BOOLEAN NOT NULL DEFAULT 0, enabled_codex BOOLEAN NOT NULL DEFAULT 0,
    enabled_gemini BOOLEAN NOT NULL DEFAULT 0, enabled_grokbuild BOOLEAN NOT NULL DEFAULT 0,
    enabled_opencode BOOLEAN NOT NULL DEFAULT 0,
    enabled_mcode BOOLEAN NOT NULL DEFAULT 0,
    enabled_agy BOOLEAN NOT NULL DEFAULT 0,
    enabled_kimi BOOLEAN NOT NULL DEFAULT 0,
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
    enabled_hermes BOOLEAN NOT NULL DEFAULT 0,
    installed_at INTEGER NOT NULL DEFAULT 0,
    content_hash TEXT,
    updated_at INTEGER NOT NULL DEFAULT 0
);
