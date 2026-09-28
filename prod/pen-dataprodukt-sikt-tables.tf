resource "google_bigquery_table" "sak_uforetrygd" {
  dataset_id = google_bigquery_dataset.pen_dataprodukt_dataset.dataset_id
  table_id   = "sak_uforetrygd"

  labels = {
    env = "default"
  }

  schema = file("${path.module}/../schemas/sak_ufore.json")

}
