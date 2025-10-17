connection: "public_data"

include: "/views/**/*.view.lkml"
include: "/data_test/*.lkml"

datagroup: pruebas_looker_sheila_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "3 hour"
}

persist_with: pruebas_looker_sheila_default_datagroup

explore: order_items {}
