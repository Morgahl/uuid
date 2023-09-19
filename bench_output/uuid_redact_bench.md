Benchmark

This benchmark compares different UUID redaction implementations.


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">16</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">15.58 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.15.5</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">26.0.2</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">5 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">1 s</td>
  </tr>
</table>

## Statistics



__Input: Concated UUIDs (   1x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">916.15 K</td>
    <td style="white-space: nowrap; text-align: right">1.09 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;6287.09%</td>
    <td style="white-space: nowrap; text-align: right">0.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.30 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">548.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.82 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4034.77%</td>
    <td style="white-space: nowrap; text-align: right">0.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.50 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">243.66 K</td>
    <td style="white-space: nowrap; text-align: right">4.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1785.10%</td>
    <td style="white-space: nowrap; text-align: right">2.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.20 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">237.55 K</td>
    <td style="white-space: nowrap; text-align: right">4.21 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1232.00%</td>
    <td style="white-space: nowrap; text-align: right">2.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">67.96 K</td>
    <td style="white-space: nowrap; text-align: right">14.71 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;268.05%</td>
    <td style="white-space: nowrap; text-align: right">13.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">25.90 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">19.19 K</td>
    <td style="white-space: nowrap; text-align: right">52.11 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;163.25%</td>
    <td style="white-space: nowrap; text-align: right">32.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">516.18 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap;text-align: right">916.15 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">548.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">243.66 K</td>
    <td style="white-space: nowrap; text-align: right">3.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">237.55 K</td>
    <td style="white-space: nowrap; text-align: right">3.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">67.96 K</td>
    <td style="white-space: nowrap; text-align: right">13.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">19.19 K</td>
    <td style="white-space: nowrap; text-align: right">47.74x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">0.70 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">0.125 KB</td>
    <td>0.18x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>2.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">1.45 KB</td>
    <td>2.06x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">3.87 KB</td>
    <td>5.5x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">25.67 KB</td>
    <td>36.51x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">33</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">165</td>
    <td>5.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">241</td>
    <td>7.3x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">84</td>
    <td>2.55x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">126</td>
    <td>3.82x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">153</td>
    <td>4.64x</td>
  </tr>
</table>


__Input: Concated UUIDs (  10x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">181.35 K</td>
    <td style="white-space: nowrap; text-align: right">5.51 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1443.34%</td>
    <td style="white-space: nowrap; text-align: right">2.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.40 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">76.19 K</td>
    <td style="white-space: nowrap; text-align: right">13.12 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;624.10%</td>
    <td style="white-space: nowrap; text-align: right">4.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">137.64 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">39.75 K</td>
    <td style="white-space: nowrap; text-align: right">25.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;186.26%</td>
    <td style="white-space: nowrap; text-align: right">19.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">164.20 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">32.93 K</td>
    <td style="white-space: nowrap; text-align: right">30.36 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;226.87%</td>
    <td style="white-space: nowrap; text-align: right">20.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">456.23 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">7.07 K</td>
    <td style="white-space: nowrap; text-align: right">141.39 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;22.45%</td>
    <td style="white-space: nowrap; text-align: right">139 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">240.09 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">1.99 K</td>
    <td style="white-space: nowrap; text-align: right">503.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;9.16%</td>
    <td style="white-space: nowrap; text-align: right">497.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">616.68 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap;text-align: right">181.35 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">76.19 K</td>
    <td style="white-space: nowrap; text-align: right">2.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">39.75 K</td>
    <td style="white-space: nowrap; text-align: right">4.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">32.93 K</td>
    <td style="white-space: nowrap; text-align: right">5.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">7.07 K</td>
    <td style="white-space: nowrap; text-align: right">25.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">1.99 K</td>
    <td style="white-space: nowrap; text-align: right">91.27x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">4.30 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">0.98 KB</td>
    <td>0.23x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">8.74 KB</td>
    <td>2.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">15.52 KB</td>
    <td>3.6x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">38.05 KB</td>
    <td>8.84x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">248.84 KB</td>
    <td>57.81x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">0.102 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">1.77 K</td>
    <td>17.33x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.45 K</td>
    <td>4.38x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">2.69 K</td>
    <td>26.38x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">1.18 K</td>
    <td>11.56x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">1.46 K</td>
    <td>14.35x</td>
  </tr>
</table>


__Input: Concated UUIDs ( 100x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">27.30 K</td>
    <td style="white-space: nowrap; text-align: right">36.63 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;187.84%</td>
    <td style="white-space: nowrap; text-align: right">19.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">423.70 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">9.96 K</td>
    <td style="white-space: nowrap; text-align: right">100.42 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;88.91%</td>
    <td style="white-space: nowrap; text-align: right">67.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">408.50 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">4.42 K</td>
    <td style="white-space: nowrap; text-align: right">226.26 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;15.59%</td>
    <td style="white-space: nowrap; text-align: right">224.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">300.70 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">4.03 K</td>
    <td style="white-space: nowrap; text-align: right">248.42 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;23.76%</td>
    <td style="white-space: nowrap; text-align: right">244.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">406.25 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">0.68 K</td>
    <td style="white-space: nowrap; text-align: right">1464.23 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;6.86%</td>
    <td style="white-space: nowrap; text-align: right">1475.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1602.37 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">4600.63 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.40%</td>
    <td style="white-space: nowrap; text-align: right">4594.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4853.92 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap;text-align: right">27.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">9.96 K</td>
    <td style="white-space: nowrap; text-align: right">2.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">4.42 K</td>
    <td style="white-space: nowrap; text-align: right">6.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">4.03 K</td>
    <td style="white-space: nowrap; text-align: right">6.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">0.68 K</td>
    <td style="white-space: nowrap; text-align: right">39.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">125.59x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">36.20 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">9.42 KB</td>
    <td>0.26x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">82.06 KB</td>
    <td>2.27x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">154.73 KB</td>
    <td>4.27x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">378.48 KB</td>
    <td>10.46x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">2480.56 KB</td>
    <td>68.53x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">0.96 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">17.59 K</td>
    <td>18.31x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">4.15 K</td>
    <td>4.32x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">26.53 K</td>
    <td>27.6x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">11.80 K</td>
    <td>12.28x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">13.15 K</td>
    <td>13.68x</td>
  </tr>
</table>


__Input: Concated UUIDs (1000x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">2856.33</td>
    <td style="white-space: nowrap; text-align: right">0.35 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;16.34%</td>
    <td style="white-space: nowrap; text-align: right">0.35 ms</td>
    <td style="white-space: nowrap; text-align: right">0.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">1520.54</td>
    <td style="white-space: nowrap; text-align: right">0.66 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;25.87%</td>
    <td style="white-space: nowrap; text-align: right">0.58 ms</td>
    <td style="white-space: nowrap; text-align: right">1.00 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">503.46</td>
    <td style="white-space: nowrap; text-align: right">1.99 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4.41%</td>
    <td style="white-space: nowrap; text-align: right">1.98 ms</td>
    <td style="white-space: nowrap; text-align: right">2.19 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">452.70</td>
    <td style="white-space: nowrap; text-align: right">2.21 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;17.39%</td>
    <td style="white-space: nowrap; text-align: right">2.11 ms</td>
    <td style="white-space: nowrap; text-align: right">3.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">68.01</td>
    <td style="white-space: nowrap; text-align: right">14.70 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1.88%</td>
    <td style="white-space: nowrap; text-align: right">14.75 ms</td>
    <td style="white-space: nowrap; text-align: right">15.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">19.77</td>
    <td style="white-space: nowrap; text-align: right">50.57 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;0.85%</td>
    <td style="white-space: nowrap; text-align: right">50.49 ms</td>
    <td style="white-space: nowrap; text-align: right">52.19 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap;text-align: right">2856.33</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">1520.54</td>
    <td style="white-space: nowrap; text-align: right">1.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">503.46</td>
    <td style="white-space: nowrap; text-align: right">5.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">452.70</td>
    <td style="white-space: nowrap; text-align: right">6.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">68.01</td>
    <td style="white-space: nowrap; text-align: right">42.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">19.77</td>
    <td style="white-space: nowrap; text-align: right">144.44x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">0.37 MB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">0.0916 MB</td>
    <td>0.25x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.80 MB</td>
    <td>2.16x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">1.51 MB</td>
    <td>4.07x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">3.69 MB</td>
    <td>9.94x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">24.21 MB</td>
    <td>65.25x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">9.46 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">155.84 K</td>
    <td>16.47x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">40.02 K</td>
    <td>4.23x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">232.31 K</td>
    <td>24.56x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">117.47 K</td>
    <td>12.42x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">125.46 K</td>
    <td>13.26x</td>
  </tr>
</table>


__Input: No Match (   1x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">805.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.24 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4568.41%</td>
    <td style="white-space: nowrap; text-align: right">0.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.40 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">211.36 K</td>
    <td style="white-space: nowrap; text-align: right">4.73 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1796.39%</td>
    <td style="white-space: nowrap; text-align: right">1.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.70 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">202.93 K</td>
    <td style="white-space: nowrap; text-align: right">4.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1683.27%</td>
    <td style="white-space: nowrap; text-align: right">1.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.10 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">62.62 K</td>
    <td style="white-space: nowrap; text-align: right">15.97 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;480.55%</td>
    <td style="white-space: nowrap; text-align: right">6.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">277.62 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">39.61 K</td>
    <td style="white-space: nowrap; text-align: right">25.25 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;107.82%</td>
    <td style="white-space: nowrap; text-align: right">26.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">41.30 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">25.61 K</td>
    <td style="white-space: nowrap; text-align: right">39.04 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;139.93%</td>
    <td style="white-space: nowrap; text-align: right">27.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">371 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap;text-align: right">805.67 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">211.36 K</td>
    <td style="white-space: nowrap; text-align: right">3.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">202.93 K</td>
    <td style="white-space: nowrap; text-align: right">3.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">62.62 K</td>
    <td style="white-space: nowrap; text-align: right">12.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">39.61 K</td>
    <td style="white-space: nowrap; text-align: right">20.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">25.61 K</td>
    <td style="white-space: nowrap; text-align: right">31.45x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.27 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">3.46 KB</td>
    <td>13.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">3.45 KB</td>
    <td>12.97x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">18.60 KB</td>
    <td>70.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">2.69 KB</td>
    <td>10.12x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">20.28 KB</td>
    <td>76.35x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">37</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">172</td>
    <td>4.65x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">282</td>
    <td>7.62x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">340</td>
    <td>9.19x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">120</td>
    <td>3.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">127</td>
    <td>3.43x</td>
  </tr>
</table>


__Input: No Match (  10x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">255.58 K</td>
    <td style="white-space: nowrap; text-align: right">3.91 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;866.26%</td>
    <td style="white-space: nowrap; text-align: right">3.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.20 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">32.04 K</td>
    <td style="white-space: nowrap; text-align: right">31.21 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;286.02%</td>
    <td style="white-space: nowrap; text-align: right">10.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">519.34 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">30.08 K</td>
    <td style="white-space: nowrap; text-align: right">33.25 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;235.53%</td>
    <td style="white-space: nowrap; text-align: right">13.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">497.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">7.41 K</td>
    <td style="white-space: nowrap; text-align: right">134.96 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;41.40%</td>
    <td style="white-space: nowrap; text-align: right">139.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">276.99 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">3.67 K</td>
    <td style="white-space: nowrap; text-align: right">272.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;16.81%</td>
    <td style="white-space: nowrap; text-align: right">276.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">344.02 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">2.54 K</td>
    <td style="white-space: nowrap; text-align: right">394.06 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;10.95%</td>
    <td style="white-space: nowrap; text-align: right">397.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">480.04 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap;text-align: right">255.58 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">32.04 K</td>
    <td style="white-space: nowrap; text-align: right">7.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">30.08 K</td>
    <td style="white-space: nowrap; text-align: right">8.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">7.41 K</td>
    <td style="white-space: nowrap; text-align: right">34.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">3.67 K</td>
    <td style="white-space: nowrap; text-align: right">69.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">2.54 K</td>
    <td style="white-space: nowrap; text-align: right">100.71x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.27 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">20.09 KB</td>
    <td>75.62x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">20.10 KB</td>
    <td>75.68x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">173.87 KB</td>
    <td>654.56x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">25.47 KB</td>
    <td>95.88x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">194.94 KB</td>
    <td>733.88x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.126 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">2.05 K</td>
    <td>16.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">3.13 K</td>
    <td>24.81x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">3.41 K</td>
    <td>27.06x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">1.11 K</td>
    <td>8.81x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">1.21 K</td>
    <td>9.59x</td>
  </tr>
</table>


__Input: No Match ( 100x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">4.66 K</td>
    <td style="white-space: nowrap; text-align: right">0.21 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;38.04%</td>
    <td style="white-space: nowrap; text-align: right">0.186 ms</td>
    <td style="white-space: nowrap; text-align: right">0.45 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">4.24 K</td>
    <td style="white-space: nowrap; text-align: right">0.24 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;30.31%</td>
    <td style="white-space: nowrap; text-align: right">0.21 ms</td>
    <td style="white-space: nowrap; text-align: right">0.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">3.45 K</td>
    <td style="white-space: nowrap; text-align: right">0.29 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;3.96%</td>
    <td style="white-space: nowrap; text-align: right">0.29 ms</td>
    <td style="white-space: nowrap; text-align: right">0.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">0.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.37 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.94%</td>
    <td style="white-space: nowrap; text-align: right">1.38 ms</td>
    <td style="white-space: nowrap; text-align: right">1.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">0.38 K</td>
    <td style="white-space: nowrap; text-align: right">2.65 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;9.11%</td>
    <td style="white-space: nowrap; text-align: right">2.75 ms</td>
    <td style="white-space: nowrap; text-align: right">2.83 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">0.30 K</td>
    <td style="white-space: nowrap; text-align: right">3.39 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.91%</td>
    <td style="white-space: nowrap; text-align: right">3.44 ms</td>
    <td style="white-space: nowrap; text-align: right">3.54 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap;text-align: right">4.66 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">4.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">3.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">0.73 K</td>
    <td style="white-space: nowrap; text-align: right">6.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">0.38 K</td>
    <td style="white-space: nowrap; text-align: right">12.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">0.30 K</td>
    <td style="white-space: nowrap; text-align: right">15.79x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">224.02 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">224.04 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.29 KB</td>
    <td>0.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">1727.91 KB</td>
    <td>7.71x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">253.28 KB</td>
    <td>1.13x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">1941.50 KB</td>
    <td>8.67x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">18.74 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">30.74 K</td>
    <td>1.64x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">10.82 K</td>
    <td>0.58x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">34.74 K</td>
    <td>1.85x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">11.00 K</td>
    <td>0.59x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">12.01 K</td>
    <td>0.64x</td>
  </tr>
</table>


__Input: No Match (1000x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">640.19</td>
    <td style="white-space: nowrap; text-align: right">1.56 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.75%</td>
    <td style="white-space: nowrap; text-align: right">1.55 ms</td>
    <td style="white-space: nowrap; text-align: right">1.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">552.95</td>
    <td style="white-space: nowrap; text-align: right">1.81 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;6.40%</td>
    <td style="white-space: nowrap; text-align: right">1.84 ms</td>
    <td style="white-space: nowrap; text-align: right">1.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">319.21</td>
    <td style="white-space: nowrap; text-align: right">3.13 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.02%</td>
    <td style="white-space: nowrap; text-align: right">3.15 ms</td>
    <td style="white-space: nowrap; text-align: right">3.23 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">51.42</td>
    <td style="white-space: nowrap; text-align: right">19.45 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.91%</td>
    <td style="white-space: nowrap; text-align: right">19.34 ms</td>
    <td style="white-space: nowrap; text-align: right">20.93 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">37.89</td>
    <td style="white-space: nowrap; text-align: right">26.39 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;3.91%</td>
    <td style="white-space: nowrap; text-align: right">26.52 ms</td>
    <td style="white-space: nowrap; text-align: right">28.17 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">29.84</td>
    <td style="white-space: nowrap; text-align: right">33.51 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4.95%</td>
    <td style="white-space: nowrap; text-align: right">33.85 ms</td>
    <td style="white-space: nowrap; text-align: right">35.81 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap;text-align: right">640.19</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">552.95</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">319.21</td>
    <td style="white-space: nowrap; text-align: right">2.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">51.42</td>
    <td style="white-space: nowrap; text-align: right">12.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">37.89</td>
    <td style="white-space: nowrap; text-align: right">16.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">29.84</td>
    <td style="white-space: nowrap; text-align: right">21.45x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">2.43 MB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">2.43 MB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.00028 MB</td>
    <td>0.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">16.75 MB</td>
    <td>6.9x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">2.47 MB</td>
    <td>1.02x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">18.95 MB</td>
    <td>7.81x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">142.67 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">250.78 K</td>
    <td>1.76x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">117.72 K</td>
    <td>0.83x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">298.59 K</td>
    <td>2.09x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">109.93 K</td>
    <td>0.77x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">120.02 K</td>
    <td>0.84x</td>
  </tr>
</table>


__Input: Plain English (   1x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">151.70 K</td>
    <td style="white-space: nowrap; text-align: right">6.59 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;695.24%</td>
    <td style="white-space: nowrap; text-align: right">5.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">9.50 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">144.56 K</td>
    <td style="white-space: nowrap; text-align: right">6.92 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1178.28%</td>
    <td style="white-space: nowrap; text-align: right">2.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">10.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">116.79 K</td>
    <td style="white-space: nowrap; text-align: right">8.56 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;891.62%</td>
    <td style="white-space: nowrap; text-align: right">4.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">15.90 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">65.18 K</td>
    <td style="white-space: nowrap; text-align: right">15.34 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;505.04%</td>
    <td style="white-space: nowrap; text-align: right">6.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">259.52 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">23.02 K</td>
    <td style="white-space: nowrap; text-align: right">43.43 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;74.59%</td>
    <td style="white-space: nowrap; text-align: right">44.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">143.90 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">13.58 K</td>
    <td style="white-space: nowrap; text-align: right">73.63 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;87.14%</td>
    <td style="white-space: nowrap; text-align: right">52.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">401.90 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap;text-align: right">151.70 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">144.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">116.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">65.18 K</td>
    <td style="white-space: nowrap; text-align: right">2.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">23.02 K</td>
    <td style="white-space: nowrap; text-align: right">6.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">13.58 K</td>
    <td style="white-space: nowrap; text-align: right">11.17x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">1.52 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">4.45 KB</td>
    <td>2.94x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">5.21 KB</td>
    <td>3.44x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">16.98 KB</td>
    <td>11.21x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">8.26 KB</td>
    <td>5.45x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">36.36 KB</td>
    <td>23.99x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">179</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">827</td>
    <td>4.62x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">593</td>
    <td>3.31x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">318</td>
    <td>1.78x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">334</td>
    <td>1.87x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">220</td>
    <td>1.23x</td>
  </tr>
</table>


__Input: Plain English (  10x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">20.31 K</td>
    <td style="white-space: nowrap; text-align: right">49.23 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;67.11%</td>
    <td style="white-space: nowrap; text-align: right">43.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">203.12 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">19.29 K</td>
    <td style="white-space: nowrap; text-align: right">51.84 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;156.45%</td>
    <td style="white-space: nowrap; text-align: right">27.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">431.08 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">14.94 K</td>
    <td style="white-space: nowrap; text-align: right">66.92 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;111.88%</td>
    <td style="white-space: nowrap; text-align: right">44.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">395.58 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">7.78 K</td>
    <td style="white-space: nowrap; text-align: right">128.46 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;43.88%</td>
    <td style="white-space: nowrap; text-align: right">127.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">254 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.10 K</td>
    <td style="white-space: nowrap; text-align: right">475.36 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;8.43%</td>
    <td style="white-space: nowrap; text-align: right">484.51 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">535.20 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">775.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;9.77%</td>
    <td style="white-space: nowrap; text-align: right">772 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">925.40 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap;text-align: right">20.31 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">19.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">14.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">7.78 K</td>
    <td style="white-space: nowrap; text-align: right">2.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.10 K</td>
    <td style="white-space: nowrap; text-align: right">9.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">15.75x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">9.22 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">43.62 KB</td>
    <td>4.73x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">52.74 KB</td>
    <td>5.72x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">162.42 KB</td>
    <td>17.62x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">81.17 KB</td>
    <td>8.81x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">355.72 KB</td>
    <td>38.59x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">1.51 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">8.37 K</td>
    <td>5.54x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">5.97 K</td>
    <td>3.95x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">3.22 K</td>
    <td>2.13x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">3.42 K</td>
    <td>2.27x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">2.17 K</td>
    <td>1.44x</td>
  </tr>
</table>


__Input: Plain English ( 100x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.79 K</td>
    <td style="white-space: nowrap; text-align: right">0.36 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;24.83%</td>
    <td style="white-space: nowrap; text-align: right">0.35 ms</td>
    <td style="white-space: nowrap; text-align: right">0.65 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.28 K</td>
    <td style="white-space: nowrap; text-align: right">0.44 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4.91%</td>
    <td style="white-space: nowrap; text-align: right">0.44 ms</td>
    <td style="white-space: nowrap; text-align: right">0.49 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">1.92 K</td>
    <td style="white-space: nowrap; text-align: right">0.52 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;15.32%</td>
    <td style="white-space: nowrap; text-align: right">0.53 ms</td>
    <td style="white-space: nowrap; text-align: right">0.72 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">0.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.32 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;8.35%</td>
    <td style="white-space: nowrap; text-align: right">1.32 ms</td>
    <td style="white-space: nowrap; text-align: right">1.44 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">4.38 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;6.46%</td>
    <td style="white-space: nowrap; text-align: right">4.41 ms</td>
    <td style="white-space: nowrap; text-align: right">4.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">0.150 K</td>
    <td style="white-space: nowrap; text-align: right">6.66 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.12%</td>
    <td style="white-space: nowrap; text-align: right">6.70 ms</td>
    <td style="white-space: nowrap; text-align: right">6.86 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap;text-align: right">2.79 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">1.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">0.76 K</td>
    <td style="white-space: nowrap; text-align: right">3.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">12.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">0.150 K</td>
    <td style="white-space: nowrap; text-align: right">18.59x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">407.80 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">86.93 KB</td>
    <td>0.21x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">526.67 KB</td>
    <td>1.29x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">1621.71 KB</td>
    <td>3.98x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">757.58 KB</td>
    <td>1.86x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">3549.31 KB</td>
    <td>8.7x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">83.17 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">14.61 K</td>
    <td>0.18x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">61.31 K</td>
    <td>0.74x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">33.44 K</td>
    <td>0.4x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">37.49 K</td>
    <td>0.45x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">19.50 K</td>
    <td>0.23x</td>
  </tr>
</table>


__Input: Plain English (1000x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">271.63</td>
    <td style="white-space: nowrap; text-align: right">3.68 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;14.94%</td>
    <td style="white-space: nowrap; text-align: right">3.54 ms</td>
    <td style="white-space: nowrap; text-align: right">4.85 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">226.85</td>
    <td style="white-space: nowrap; text-align: right">4.41 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.02%</td>
    <td style="white-space: nowrap; text-align: right">4.40 ms</td>
    <td style="white-space: nowrap; text-align: right">4.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">200.35</td>
    <td style="white-space: nowrap; text-align: right">4.99 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.14%</td>
    <td style="white-space: nowrap; text-align: right">5.00 ms</td>
    <td style="white-space: nowrap; text-align: right">5.81 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">51.87</td>
    <td style="white-space: nowrap; text-align: right">19.28 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.31%</td>
    <td style="white-space: nowrap; text-align: right">19.21 ms</td>
    <td style="white-space: nowrap; text-align: right">19.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">23.31</td>
    <td style="white-space: nowrap; text-align: right">42.89 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;3.99%</td>
    <td style="white-space: nowrap; text-align: right">43.27 ms</td>
    <td style="white-space: nowrap; text-align: right">46.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">13.86</td>
    <td style="white-space: nowrap; text-align: right">72.15 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;0.63%</td>
    <td style="white-space: nowrap; text-align: right">72.17 ms</td>
    <td style="white-space: nowrap; text-align: right">72.99 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap;text-align: right">271.63</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">226.85</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">200.35</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">51.87</td>
    <td style="white-space: nowrap; text-align: right">5.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">23.31</td>
    <td style="white-space: nowrap; text-align: right">11.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">13.86</td>
    <td style="white-space: nowrap; text-align: right">19.6x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">4.25 MB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.85 MB</td>
    <td>0.2x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">5.14 MB</td>
    <td>1.21x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">15.76 MB</td>
    <td>3.71x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">7.77 MB</td>
    <td>1.83x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">34.65 MB</td>
    <td>8.15x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">751.49 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">146.83 K</td>
    <td>0.2x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">520.25 K</td>
    <td>0.69x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">281.98 K</td>
    <td>0.38x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">304.03 K</td>
    <td>0.4x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">187.49 K</td>
    <td>0.25x</td>
  </tr>
</table>


__Input: URL Path (   1x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">272.84 K</td>
    <td style="white-space: nowrap; text-align: right">3.67 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2108.92%</td>
    <td style="white-space: nowrap; text-align: right">1.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">183.01 K</td>
    <td style="white-space: nowrap; text-align: right">5.46 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;953.36%</td>
    <td style="white-space: nowrap; text-align: right">3.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">7.30 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">153.52 K</td>
    <td style="white-space: nowrap; text-align: right">6.51 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1232.75%</td>
    <td style="white-space: nowrap; text-align: right">2.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">7.50 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">131.93 K</td>
    <td style="white-space: nowrap; text-align: right">7.58 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;949.43%</td>
    <td style="white-space: nowrap; text-align: right">3.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">12.90 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">38.91 K</td>
    <td style="white-space: nowrap; text-align: right">25.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;136.30%</td>
    <td style="white-space: nowrap; text-align: right">25.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">74.93 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">15.16 K</td>
    <td style="white-space: nowrap; text-align: right">65.98 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;115.47%</td>
    <td style="white-space: nowrap; text-align: right">42.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">472.88 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap;text-align: right">272.84 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">183.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">153.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">131.93 K</td>
    <td style="white-space: nowrap; text-align: right">2.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">38.91 K</td>
    <td style="white-space: nowrap; text-align: right">7.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">15.16 K</td>
    <td style="white-space: nowrap; text-align: right">18.0x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">1.65 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">1.89 KB</td>
    <td>1.15x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">6.46 KB</td>
    <td>3.92x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">4.02 KB</td>
    <td>2.44x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">5.68 KB</td>
    <td>3.45x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">32.02 KB</td>
    <td>19.42x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">354</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">119</td>
    <td>0.34x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">131</td>
    <td>0.37x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">489</td>
    <td>1.38x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">197</td>
    <td>0.56x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">191</td>
    <td>0.54x</td>
  </tr>
</table>


__Input: URL Path (  10x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">40.22 K</td>
    <td style="white-space: nowrap; text-align: right">24.86 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;301.20%</td>
    <td style="white-space: nowrap; text-align: right">10.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">492.87 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">25.69 K</td>
    <td style="white-space: nowrap; text-align: right">38.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;112.37%</td>
    <td style="white-space: nowrap; text-align: right">31.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">299.89 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">20.71 K</td>
    <td style="white-space: nowrap; text-align: right">48.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;156.64%</td>
    <td style="white-space: nowrap; text-align: right">21 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">408 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">16.62 K</td>
    <td style="white-space: nowrap; text-align: right">60.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;114.76%</td>
    <td style="white-space: nowrap; text-align: right">43 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">372.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">3.77 K</td>
    <td style="white-space: nowrap; text-align: right">265.08 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;14.06%</td>
    <td style="white-space: nowrap; text-align: right">268.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">327.90 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">1.56 K</td>
    <td style="white-space: nowrap; text-align: right">642.95 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;8.49%</td>
    <td style="white-space: nowrap; text-align: right">633.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">771.48 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap;text-align: right">40.22 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">25.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">20.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">16.62 K</td>
    <td style="white-space: nowrap; text-align: right">2.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">3.77 K</td>
    <td style="white-space: nowrap; text-align: right">10.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">1.56 K</td>
    <td style="white-space: nowrap; text-align: right">25.86x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">15.57 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">12.53 KB</td>
    <td>0.8x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">58.75 KB</td>
    <td>3.77x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">41.26 KB</td>
    <td>2.65x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">55.59 KB</td>
    <td>3.57x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">312.28 KB</td>
    <td>20.06x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">3.76 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.89 K</td>
    <td>0.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">1.17 K</td>
    <td>0.31x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">4.91 K</td>
    <td>1.31x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">2.02 K</td>
    <td>0.54x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">1.84 K</td>
    <td>0.49x</td>
  </tr>
</table>


__Input: URL Path ( 100x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">5.34 K</td>
    <td style="white-space: nowrap; text-align: right">187.39 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;56.65%</td>
    <td style="white-space: nowrap; text-align: right">170.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">494.76 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.84 K</td>
    <td style="white-space: nowrap; text-align: right">351.98 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;7.00%</td>
    <td style="white-space: nowrap; text-align: right">350.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">432.09 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">2.24 K</td>
    <td style="white-space: nowrap; text-align: right">445.61 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;14.09%</td>
    <td style="white-space: nowrap; text-align: right">450.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">577.60 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.05 K</td>
    <td style="white-space: nowrap; text-align: right">487.95 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;18.11%</td>
    <td style="white-space: nowrap; text-align: right">493.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">700.82 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">0.35 K</td>
    <td style="white-space: nowrap; text-align: right">2879.96 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4.39%</td>
    <td style="white-space: nowrap; text-align: right">2916.42 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3109.18 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">0.171 K</td>
    <td style="white-space: nowrap; text-align: right">5844.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1.78%</td>
    <td style="white-space: nowrap; text-align: right">5851.85 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6061.33 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap;text-align: right">5.34 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.84 K</td>
    <td style="white-space: nowrap; text-align: right">1.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">2.24 K</td>
    <td style="white-space: nowrap; text-align: right">2.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">2.05 K</td>
    <td style="white-space: nowrap; text-align: right">2.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">0.35 K</td>
    <td style="white-space: nowrap; text-align: right">15.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">0.171 K</td>
    <td style="white-space: nowrap; text-align: right">31.19x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">151.82 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">119.63 KB</td>
    <td>0.79x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">581.20 KB</td>
    <td>3.83x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">411.35 KB</td>
    <td>2.71x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">545.85 KB</td>
    <td>3.6x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">3114.94 KB</td>
    <td>20.52x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">37.70 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">8.77 K</td>
    <td>0.23x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">11.88 K</td>
    <td>0.32x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">47.99 K</td>
    <td>1.27x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">21.04 K</td>
    <td>0.56x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">16.64 K</td>
    <td>0.44x</td>
  </tr>
</table>


__Input: URL Path (1000x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">630.74</td>
    <td style="white-space: nowrap; text-align: right">1.59 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;9.41%</td>
    <td style="white-space: nowrap; text-align: right">1.57 ms</td>
    <td style="white-space: nowrap; text-align: right">1.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">306.71</td>
    <td style="white-space: nowrap; text-align: right">3.26 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;5.32%</td>
    <td style="white-space: nowrap; text-align: right">3.18 ms</td>
    <td style="white-space: nowrap; text-align: right">3.68 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">232.09</td>
    <td style="white-space: nowrap; text-align: right">4.31 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;6.83%</td>
    <td style="white-space: nowrap; text-align: right">4.31 ms</td>
    <td style="white-space: nowrap; text-align: right">4.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">163.90</td>
    <td style="white-space: nowrap; text-align: right">6.10 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.76%</td>
    <td style="white-space: nowrap; text-align: right">6.10 ms</td>
    <td style="white-space: nowrap; text-align: right">6.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">40.58</td>
    <td style="white-space: nowrap; text-align: right">24.64 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.36%</td>
    <td style="white-space: nowrap; text-align: right">24.60 ms</td>
    <td style="white-space: nowrap; text-align: right">26.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">15.66</td>
    <td style="white-space: nowrap; text-align: right">63.86 ms</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.59%</td>
    <td style="white-space: nowrap; text-align: right">63.70 ms</td>
    <td style="white-space: nowrap; text-align: right">78.05 ms</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap;text-align: right">630.74</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">306.71</td>
    <td style="white-space: nowrap; text-align: right">2.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">232.09</td>
    <td style="white-space: nowrap; text-align: right">2.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">163.90</td>
    <td style="white-space: nowrap; text-align: right">3.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap; text-align: right">40.58</td>
    <td style="white-space: nowrap; text-align: right">15.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap; text-align: right">15.66</td>
    <td style="white-space: nowrap; text-align: right">40.28x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">1.44 MB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">1.17 MB</td>
    <td>0.81x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">4.02 MB</td>
    <td>2.79x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">5.56 MB</td>
    <td>3.86x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">5.27 MB</td>
    <td>3.65x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">30.41 MB</td>
    <td>21.07x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">339.01 K</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">87.66 K</td>
    <td>0.26x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">453.58 K</td>
    <td>1.34x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">109.25 K</td>
    <td>0.32x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">StringParse.redact/2</td>
    <td style="white-space: nowrap">197.03 K</td>
    <td>0.58x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Parse.parse/2</td>
    <td style="white-space: nowrap">160.00 K</td>
    <td>0.47x</td>
  </tr>
</table>