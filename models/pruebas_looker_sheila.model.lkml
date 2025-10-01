connection: "public_data"

datagroup: pruebas_looker_sheila_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pruebas_looker_sheila_default_datagroup

