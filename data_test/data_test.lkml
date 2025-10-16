test: user_id_is_not_null {
  explore_source: order_items {
    column: user_id {
      field: order_items.user_id
    }
  }
  # La prueba tiene éxito si esta consulta devuelve 0 filas
  assert: a_null_primary_key {
    expression: NOT is_null(${order_items.user_id});;
  }
}
