-- Autogenerated by migration tool on 2022-03-07 15:57:32
-- CHANGEME: Verify or edit this file before proceeding

-- Resource: account.locations
CREATE TABLE IF NOT EXISTS "azure_account_locations" (
	"cq_id" uuid NOT NULL,
	"cq_meta" jsonb,
	"subscription_id" text,
	"id" text,
	"name" text,
	"display_name" text,
	"latitude" text,
	"longitude" text,
	CONSTRAINT azure_account_locations_pk PRIMARY KEY(subscription_id,id),
	UNIQUE(cq_id)
);

-- Resource: eventhub.namespaces
ALTER TABLE IF EXISTS "azure_eventhub_namespaces" ADD COLUMN IF NOT EXISTS "network_rule_set" jsonb;

-- Resource: search.services
CREATE TABLE IF NOT EXISTS "azure_search_services" (
	"cq_id" uuid NOT NULL,
	"cq_meta" jsonb,
	"subscription_id" text,
	"replica_count" integer,
	"partition_count" integer,
	"hosting_mode" text,
	"public_network_access" text,
	"status" text,
	"status_details" text,
	"provisioning_state" text,
	"network_rule_set_ip_rules" inet[],
	"sku_name" text,
	"identity_principal_id" text,
	"identity_tenant_id" text,
	"identity_type" text,
	"tags" jsonb,
	"location" text,
	"id" text,
	"name" text,
	"type" text,
	CONSTRAINT azure_search_services_pk PRIMARY KEY(subscription_id,id),
	UNIQUE(cq_id)
);
CREATE TABLE IF NOT EXISTS "azure_search_service_private_endpoint_connections" (
	"cq_id" uuid NOT NULL,
	"cq_meta" jsonb,
	"service_cq_id" uuid,
	"private_endpoint_id" text,
	"private_link_connection_status" text,
	"private_link_connection_description" text,
	"private_link_connection_actions_required" text,
	"id" text,
	"name" text,
	"type" text,
	CONSTRAINT azure_search_service_private_endpoint_connections_pk PRIMARY KEY(cq_id),
	UNIQUE(cq_id),
	FOREIGN KEY (service_cq_id) REFERENCES azure_search_services(cq_id) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "azure_search_service_shared_private_link_resources" (
	"cq_id" uuid NOT NULL,
	"cq_meta" jsonb,
	"service_cq_id" uuid,
	"private_link_resource_id" text,
	"group_id" text,
	"request_message" text,
	"resource_region" text,
	"status" text,
	"provisioning_state" text,
	"id" text,
	"name" text,
	"type" text,
	CONSTRAINT azure_search_service_shared_private_link_resources_pk PRIMARY KEY(cq_id),
	UNIQUE(cq_id),
	FOREIGN KEY (service_cq_id) REFERENCES azure_search_services(cq_id) ON DELETE CASCADE
);

-- Resource: security.assessments
CREATE TABLE IF NOT EXISTS "azure_security_assessments" (
	"cq_id" uuid NOT NULL,
	"cq_meta" jsonb,
	"subscription_id" text,
	"display_name" text,
	"code" text,
	"cause" text,
	"description" text,
	"additional_data" jsonb,
	"azure_portal_uri" text,
	"metadata_display_name" text,
	"metadata_policy_definition_id" text,
	"metadata_description" text,
	"metadata_remediation_description" text,
	"metadata_categories" text[],
	"metadata_severity" text,
	"metadata_user_impact" text,
	"metadata_implementation_effort" text,
	"metadata_threats" text[],
	"metadata_preview" boolean,
	"metadata_assessment_type" text,
	"metadata_partner_data_partner_name" text,
	"metadata_partner_data_product_name" text,
	"partner_name" text,
	"id" text,
	"name" text,
	"type" text,
	"resource_details" jsonb,
	CONSTRAINT azure_security_assessments_pk PRIMARY KEY(subscription_id,id),
	UNIQUE(cq_id)
);

-- Resource: sql.servers
ALTER TABLE IF EXISTS "azure_sql_databases" ADD COLUMN IF NOT EXISTS "backup_long_term_retention_policy" jsonb;

-- Resource: streamanalytics.jobs
CREATE TABLE IF NOT EXISTS "azure_streamanalytics_jobs" (
	"cq_id" uuid NOT NULL,
	"cq_meta" jsonb,
	"subscription_id" text,
	"sku_name" text,
	"job_id" text,
	"provisioning_state" text,
	"job_state" text,
	"job_type" text,
	"output_start_mode" text,
	"output_start_time" timestamp without time zone,
	"last_output_event_time" timestamp without time zone,
	"events_out_of_order_policy" text,
	"output_error_policy" text,
	"events_out_of_order_max_delay" integer,
	"events_late_arrival_max_delay" integer,
	"data_locale" text,
	"compatibility_level" text,
	"created_date" timestamp without time zone,
	"transformation_properties_streaming_units" integer,
	"transformation_properties_valid_streaming_units" integer[],
	"transformation_properties_query" text,
	"transformation_properties_etag" text,
	"transformation_id" text,
	"transformation_name" text,
	"transformation_type" text,
	"etag" text,
	"job_storage_account_authentication_mode" text,
	"job_storage_account_name" text,
	"job_storage_account_key" text,
	"content_storage_policy" text,
	"cluster_id" text,
	"identity_tenant_id" text,
	"identity_principal_id" text,
	"identity_type" text,
	"tags" jsonb,
	"location" text,
	"id" text,
	"name" text,
	"type" text,
	CONSTRAINT azure_streamanalytics_jobs_pk PRIMARY KEY(subscription_id,id),
	UNIQUE(cq_id)
);