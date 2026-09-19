# Repository metadata baseline

This file is the canonical metadata plan for the public repositories in this GitHub account.

The `About` text is intentionally concise. Topics are limited to terms that are supported by the repository or its documented history.

> Security note: repositories related to medical reports, PACS, SGG or production client systems should be made private until historical credentials and sensitive data have been removed from Git history and all exposed credentials have been rotated.

| Repository | Classification | Recommended About | Recommended Topics | Visibility recommendation |
|---|---|---|---|---|
| `sistema_alunos` | Historical original | Historical PHP student management system preserved to show the evolution toward the modern Laravel rebuild. | `php`, `mysql`, `javascript`, `jquery`, `legacy` | Public |
| `sistema_alunos_laravel` | Current flagship | Laravel 13 and PostgreSQL API demonstrating transactional enrollment rules, concurrency control, testing, OpenAPI and CI. | `laravel`, `php`, `postgresql`, `rest-api`, `docker`, `openapi`, `github-actions`, `software-architecture` | Public |
| `sdk_mercadopago_php` | Historical original | Historical PHP integration helper for Mercado Pago in environments where direct Composer usage was constrained. | `php`, `mercadopago`, `payments`, `integration`, `legacy` | Public |
| `compras_da_manha_php_js_puro` | Historical original | Historical shopping-list application built with plain PHP, JavaScript, AJAX and MySQL. | `php`, `javascript`, `ajax`, `mysql`, `legacy` | Public |
| `compras_da_manha_php_codeigniter` | Historical original | CodeIgniter version of an earlier PHP shopping-list application, preserved as an evolution step. | `php`, `codeigniter`, `mysql`, `javascript`, `legacy` | Public |
| `ExcelUtils` | Historical original | Legacy PHP utilities for importing and exporting XLS, XLSX and CSV files with PhpSpreadsheet. | `php`, `phpspreadsheet`, `excel`, `csv`, `legacy` | Public |
| `LaudosApp` | Production/legacy system | Legacy medical-report platform codebase with web, integration and document-processing components. | `php`, `medical-software`, `integrations`, `legacy` | Private until history cleanup |
| `api-rest-php-sem-framework` | Historical original | Framework-free PHP REST API exploring routing, PDO, repositories, services, validation and bearer authentication. | `php`, `rest-api`, `pdo`, `mysql`, `backend`, `api` | Public |
| `symfonyfirstapp` | Historical implementation | Historical Symfony 5.4 application exploring Doctrine, Security, Forms, CRUD and JSON API development. | `php`, `symfony`, `doctrine`, `crud`, `rest-api` | Public |
| `zoologico` | Historical implementation | Small Symfony routing experiment preserved as historical technical code. | `php`, `symfony`, `routing`, `technical`, `legacy` | Public |
| `ituti` | Historical original | Legacy PHP application preserved as part of the account's development history. | `php`, `javascript`, `legacy`, `web-application` | Public |
| `LaudosAppAPI` | Production/legacy system | Legacy API component from a medical-report platform ecosystem. | `api`, `medical-software`, `integration`, `legacy` | Private until history cleanup |
| `LaudosAppSOC` | Production/legacy system | Legacy integration component for medical-report workflows and external occupational-health systems. | `integration`, `medical-software`, `api`, `legacy` | Private until history cleanup |
| `LaudosApp-2.0` | Production/legacy system | Second-generation legacy medical-report platform codebase with web and integration components. | `php`, `medical-software`, `integrations`, `legacy` | Private until history cleanup |
| `icons-svg` | Utility/assets | SVG icon asset collection used by web projects. | `svg`, `icons`, `frontend`, `assets` | Public |
| `dcm_for_jpg` | Placeholder | Placeholder repository for DICOM-to-image tooling. No public implementation is currently included. | `dicom`, `medical-imaging`, `image-processing` | Private or populate before public use |
| `api_pacs_laudos` | Production/legacy system | DICOM/PACS integration API for receiving studies, generating previews and connecting to a medical-report workflow. | `python`, `dicom`, `pacs`, `medical-imaging`, `api`, `aws` | Private until history cleanup |
| `gerador_numeros_mega_sena` | Historical utility | Historical PHP utility for generating number combinations, checking results and exporting spreadsheet data. | `php`, `mysql`, `phpspreadsheet`, `utility`, `legacy` | Public |
| `api_sgg_laudosapp` | Production/legacy system | Legacy SGG integration API and dashboard used within a medical-report workflow. | `php`, `api`, `integration`, `medical-software`, `legacy` | Private until history cleanup |
| `bolaobet` | Historical placeholder | Historical repository retained for provenance; no substantial public application implementation is currently presented. | `historical`, `placeholder` | Consider private |
| `ecommerce-recomendations-with-ml` | External-source technical implementation | Early recommendation-system implementation documenting the progression toward later e-commerce recommendation experiments. | `machine-technical`, `recommendation-system`, `ecommerce`, `reference-implementation` | Public only if upstream license permits |
| `E-commerce-Recommendation-System-MongoDB-API-Architecture` | External-source technical implementation | API-oriented recommendation-system implementation using Node.js, Express and MongoDB as a precursor to later experiments. | `nodejs`, `mongodb`, `recommendation-system`, `api`, `ecommerce`, `reference-implementation` | Public only if upstream license permits |
| `NeuroCart` | External-source extended implementation | Recommendation-system implementation combining Node.js, MongoDB and TensorFlow.js with documented external-source provenance. | `nodejs`, `mongodb`, `tensorflowjs`, `recommendation-system`, `machine-technical`, `reference-implementation` | Public only if upstream license permits |
| `How-to-win-any-game-beta` | Third-party reference implementation | Historical Duck Hunt JavaScript implementation copy with explicit attribution to the original project. | `javascript`, `game`, `reference-implementation`, `historical` | Public with attribution |
| `exemplo-06-playwright-testes` | External-source technical implementation | Playwright testing exercise retained with explicit source provenance and licensing notes. | `playwright`, `testing`, `javascript`, `reference-implementation` | Prefer private under upstream license |
| `exemplo-08-context7` | External-source technical implementation | Context7 integration exercise retained with explicit source provenance and licensing notes. | `context7`, `ai`, `reference-implementation` | Prefer private under upstream license |
| `project-node-grafana-mcp` | External-source technical implementation | Observability and MCP implementation using OpenTelemetry, Prometheus, Loki, Tempo, Grafana and PostgreSQL. | `mcp`, `opentelemetry`, `grafana`, `prometheus`, `loki`, `tempo`, `reference-implementation` | Prefer private under upstream license |
| `exemplo-10-ollama` | External-source technical implementation | Ollama integration exercise retained with explicit source provenance and licensing notes. | `ollama`, `llm`, `nodejs`, `reference-implementation` | Prefer private under upstream license |
| `exemplo-11-openrouter` | External-source technical implementation | OpenRouter integration exercise retained with explicit source provenance and licensing notes. | `openrouter`, `llm`, `nodejs`, `reference-implementation` | Prefer private under upstream license |
| `project-node-embeddings-neo4j` | External-source technical implementation | Embeddings and Neo4j vector-search implementation covering ingestion and semantic similarity workflows. | `embeddings`, `neo4j`, `vector-search`, `semantic-search`, `nodejs`, `reference-implementation` | Prefer private under upstream license |
| `exemplo-13-embeddings-neo4j-rag` | External-source technical implementation | RAG and Neo4j embeddings exercise retained with explicit source provenance and licensing notes. | `rag`, `embeddings`, `neo4j`, `llm`, `reference-implementation` | Prefer private under upstream license |
| `smart-model-router-gateway` | External-source extended implementation | LLM routing implementation extended with provider abstraction, model fallback, request limits and deterministic tests. | `llm`, `openrouter`, `typescript`, `fastify`, `routing`, `testing`, `reference-implementation` | Prefer private/rebuild clean-room |
| `felixstudio` | Production/legacy system | Historical Felix Studio web platform code preserved as part of the company's engineering history. | `php`, `javascript`, `web-platform`, `legacy` | Prefer private |
| `project-node-langchain` | External-source technical implementation | LangChain introductory implementation retained with explicit source provenance and licensing notes. | `langchain`, `llm`, `nodejs`, `reference-implementation` | Prefer private under upstream license |
| `project-node-medical-appointment` | External-source technical implementation | LangGraph prompt-chaining implementation; repository name is historical and does not describe the current article-generation flow. | `langgraph`, `prompt-chaining`, `llm`, `nodejs`, `reference-implementation` | Prefer private under upstream license |
| `bielfelix` | Profile | Professional GitHub profile for Gabriel Felix: Senior Full Stack Developer, Applied AI Engineer and Software Architecture. | `software-engineering`, `backend`, `full-stack`, `applied-ai`, `software-architecture` | Public |

## Planned original flagship repositories

These projects should be implemented from scratch without reusing course-derived code.

### `llm-reliability-gateway`

**About:** Production-oriented LLM gateway with provider abstraction, routing policies, fallback, circuit breakers, token/cost controls, tracing and evaluation hooks.

**Topics:** `llm`, `ai-engineering`, `typescript`, `fastify`, `opentelemetry`, `redis`, `postgresql`, `docker`, `software-architecture`

### `rag-evaluation-platform`

**About:** RAG engineering platform for ingestion, hybrid retrieval, reranking, grounded answers, evaluation datasets and regression testing.

**Topics:** `rag`, `ai-engineering`, `python`, `fastapi`, `pgvector`, `embeddings`, `retrieval`, `evaluation`, `opentelemetry`, `docker`

### `multi-tenant-saas-platform`

**About:** Multi-tenant SaaS backend demonstrating RBAC, queues, idempotent webhooks, billing adapters, audit trails, quotas and API architecture.

**Topics:** `laravel`, `php`, `postgresql`, `redis`, `multi-tenant`, `rbac`, `webhooks`, `docker`, `openapi`, `software-architecture`

## Portfolio intent

The three planned repositories should complement the existing `sistema_alunos_laravel` flagship and demonstrate the professional scope reflected in the resume:

1. Senior backend and architecture.
2. Applied AI engineering.
3. Cloud, integrations and production reliability.
