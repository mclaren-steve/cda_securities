- dashboard: cda_records
  title: Securities
  layout: grid
  rows:
  - elements: [cda_securities_records]
  height: 1000
  auto_run: true
  embed_style:
  background_color: "#ffffff"
  show_title: true
  title_color: "#646569"
  show_filters_bar: true
  tile_background_color: "#ffffff"
  tile_text_color: "#646569"

  filters:
  - name: security_type
    label: 'Security Type'
    type: field_filter
    model: cda_securities
    explore: records
    field: records.security_type
  - name: country_exchange
    label: 'Country Exchange'
    type: field_filter
    model: cda_securities
    explore: records
    field: records.country_exchange
  - name: data_approved
    label: 'Data Approved'
    type: field_filter
    model: cda_securities
    explore: records
    field: records.data_approved
  - name: all_okay_display
    label: 'Okay?'
    type: field_filter
    model: cda_securities
    explore: records
    field: records.all_okay_display

  elements:
  - name: cda_securities_records
    title: Securities
    type: table
    model: cda_securities
    explore: records
    dimensions: [records.all_okay, records.isin, records.isin_okay, records.sec_name,
      records.sec_name_okay, records.security_type, records.security_type_okay, records.currency,
      records.currency_okay, records.country_exchange, records.country_exchange_okay,
      records.data_approved, records.data_approved_okay, records.update_date_okay, records.update_date]
    listen:
      security_type: records.security_type
      country_exchange: records.country_exchange
      data_approved: records.data_approved
      all_okay_display: records.all_okay_display
    sorts: [records.sec_name]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
