view: countries {
  sql_table_name: `geospatial_data.countries`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: capital {
    type: string
    sql: ${TABLE}.capital ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.currency_name ;;
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.currency_symbol ;;
  }

  dimension: emoji {
    type: string
    sql: ${TABLE}.emoji ;;
  }

  dimension: emoji_u {
    type: string
    sql: ${TABLE}.emojiU ;;
  }

  dimension: iso2 {
    type: string
    sql: ${TABLE}.iso2 ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: native {
    type: string
    sql: ${TABLE}.native ;;
  }

  dimension: numeric_code {
    type: number
    sql: ${TABLE}.numeric_code ;;
  }

  dimension: phone_code {
    type: string
    sql: ${TABLE}.phone_code ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: subregion {
    type: string
    sql: ${TABLE}.subregion ;;
  }

  dimension: timezones {
    type: string
    sql: ${TABLE}.timezones ;;
  }

  dimension: tld {
    type: string
    sql: ${TABLE}.tld ;;
  }

  measure: count {
    type: count
    drill_fields: [id, currency_name, name]
  }
}
