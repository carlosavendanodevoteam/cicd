view: order_items {
  # You can specify the table name if it's different from the view name:
  sql_table_name: sheila-gallardo-sandbox-01.looker_example.order_items ;;

  dimension: order_item_id {
    description: "PK"
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: user_id {
    label: "ID"
    description: "user"
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: lifetime_orders {
    description: "The total number of orders for each user"
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: most_recent_purchase {
    description: "The date when each user last ordered"
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.created_at ;;
  }

  measure: total_lifetime_orders {
    description: "Use this for counting lifetime orders across many users"
    type: sum
    sql: ${lifetime_orders} ;;
  }

}
