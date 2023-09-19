test_plain_en =
  "This function can be used to extract 3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a from URLs or any other binary string that follows the f47ac10b-58cc-4372-a567-0e02b2c3d479 format."

test_url_path =
  "https://www.test.com/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0a/f47ac10b-58cc-4372-a567-0e02b2c3d479/3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa/test.index"

test_concated =
  "3d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9d0af47ac10b-58cc-4372-a567-0e02b2c3d4793d5b8e4e-8e2a-4a7d-9e3f-6f8e1b2c9daa"

test_no_match =
  "GHIL MOPQ/ghil mopq[GHI LMO)PQgh\tilm\nopq GHI LMO PQgh*ilm opq GHI LMO PQgh ilm opq GHI%LMO PQgh ilm opq GHI;"

redact_slug = ":id"

Benchee.run(
  %{
    "Charlist.redact/2" => fn {input, redact_slug} -> Uuid.Redact.Charlist.redact(input, redact_slug) end,
    "Charlist2.redact/2" => fn {input, redact_slug} -> Uuid.Redact.Charlist2.redact(input, redact_slug) end,
    "NimbleParsec.redact!/1" => fn {input, _redact_slug} -> Uuid.Redact.NimbleParsec.redact!(input) end,
    "Parse.parse/2" => fn {input, redact_slug} -> Uuid.Redact.Parse.parse(input, redact_slug) end,
    "RegEx.redact/2" => fn {input, redact_slug} -> Uuid.Redact.RegEx.redact(input, redact_slug) end,
    "StringParse.redact/2" => fn {input, redact_slug} -> Uuid.Redact.StringParse.redact(input, redact_slug) end
  },
  inputs: %{
    "Concated UUIDs (   1x)" => {test_concated, redact_slug},
    "Concated UUIDs (  10x)" => {String.duplicate(test_concated, 10), redact_slug},
    "Concated UUIDs ( 100x)" => {String.duplicate(test_concated, 100), redact_slug},
    "Concated UUIDs (1000x)" => {String.duplicate(test_concated, 1000), redact_slug},
    "No Match (   1x)" => {test_no_match, redact_slug},
    "No Match (  10x)" => {String.duplicate(test_no_match, 10), redact_slug},
    "No Match ( 100x)" => {String.duplicate(test_no_match, 100), redact_slug},
    "No Match (1000x)" => {String.duplicate(test_no_match, 1000), redact_slug},
    "Plain English (   1x)" => {test_plain_en, redact_slug},
    "Plain English (  10x)" => {String.duplicate(test_plain_en, 10), redact_slug},
    "Plain English ( 100x)" => {String.duplicate(test_plain_en, 100), redact_slug},
    "Plain English (1000x)" => {String.duplicate(test_plain_en, 1000), redact_slug},
    "URL Path (   1x)" => {test_url_path, redact_slug},
    "URL Path (  10x)" => {String.duplicate(test_url_path, 10), redact_slug},
    "URL Path ( 100x)" => {String.duplicate(test_url_path, 100), redact_slug},
    "URL Path (1000x)" => {String.duplicate(test_url_path, 1000), redact_slug}
  },
  warmup: 1,
  time: 5,
  memory_time: 2,
  reduction_time: 2,
  pre_check: true,
  formatters: [
    {Benchee.Formatters.Console, extended_statistics: true},
    {Benchee.Formatters.HTML, file: "bench_output/uuid_redact_bench.html", auto_open: false},
    {Benchee.Formatters.Markdown,
     file: "bench_output/uuid_redact_bench.md",
     description: """
     This benchmark compares different UUID redaction implementations.
     """}
  ]
)
