
# CACE Summary for sg13g2_leo_ip__ota5t

**netlist source**: layout

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| DC gain              | ngspice              | a0                   |          10 V/V | 19.372 V/V |          any | 30.526 V/V |          any | 44.192 V/V |   Pass ✅    |
| Unity Gain Frequency | ngspice              | ugf                  |          1e6 Hz | 15741700.000 Hz |          any | 21373700.000 Hz |          any | 27489500.000 Hz |   Pass ✅    |
| Phase Margin         | ngspice              | pm                   |            60 ° |   85.727 ° |          any |   86.996 ° |          any |   88.775 ° |   Pass ✅    |
| DC gain MC           | ngspice              | a0                   |          10 V/V | 13.153 V/V |          any | 21.038 V/V |          any | 28.895 V/V |   Pass ✅    |
| Area                 | magic_area           | area                 |               ​ |          ​ |            ​ |          ​ |      600 µm² | 76.850 µm² |   Pass ✅    |
| Width                | magic_area           | width                |               ​ |          ​ |            ​ |          ​ |          any |   9.685 µm |   Pass ✅    |
| Height               | magic_area           | height               |               ​ |          ​ |            ​ |          ​ |          any |   7.935 µm |   Pass ✅    |
| Magic DRC            | magic_drc            | drc_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |
| Netgen LVS           | netgen_lvs           | lvs_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |
| KLayout DRC maximal  | klayout_drc          | drc_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |
| Antenna Checks       | magic_antenna_check  | antenna_violations   |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |


## Plots

## gain_vs_temp

![gain_vs_temp](./sg13g2_leo_ip__ota5t/layout/gain_vs_temp.png)

## ugf_vs_corner

![ugf_vs_corner](./sg13g2_leo_ip__ota5t/layout/ugf_vs_corner.png)

## pm_vs_vdd

![pm_vs_vdd](./sg13g2_leo_ip__ota5t/layout/pm_vs_vdd.png)

## gain_mc

![gain_mc](./sg13g2_leo_ip__ota5t/layout/gain_mc.png)

## transient

![transient](./sg13g2_leo_ip__ota5t/layout/transient.svg)
