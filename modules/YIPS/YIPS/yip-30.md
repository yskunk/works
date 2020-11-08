---
yip: 30
title: YFI Inflation Schedule
status: Rejected
author: Substreight (@substreight), DeltaTiger (@deltatigernz), Hannes Graah (@Graadient), Daryl Lau (@Daryllautk), yfi_whale
discussions-to: https://gov.yearn.finance/t/yip-30-yfi-inflation-schedule/1439
created: 2020-07-28
---

## Simple Summary
Implement an inflation schedule of 20,000 YFI over the next 8 years, with 12,802 distributed in the first 3 years, ending with a trailing tail of 1% inflation.

## Abstract
* Update the YFI mint contract to reflect new inflation schedule.

## Motivation
To create an inflation schedule after the passing of YIP-0.

**FOR**: Implement an inflation schedule of 20,000 YFI over the next 8 years, with 12,802 distributed in the first 3 years, ending with a trailing tail of 1% inflation.

**AGAINST**: No changes.

## Specification

### Overview
1. Adjust supply schedule to follow [[YFI Inflation Schedule](https://docs.google.com/spreadsheets/d/1yomUGpAWR8svL9RXD-_vL2ArgQPGj1x2XPNKDEuZR9Q/edit?usp=sharing)].
  - Beginning annual inflation: 22.384%
  - Weekly emissions reduction multiplier: 0.9937
  - Week that terminal inflation starts: 416 weeks
  - Fixed % ongoing inflation (tail emission): 1%
2. This model will stay in place until it is stopped or adjusted.

### Rationale

* Liquidity provider yields are maintained at reasonably competitive levels in various YFI price and TVL scenarios (see modeling sheet).
* Lower initial inflation (22%) to keep long-term rewards reasonable.
* 8 year emission schedule to support long-term development.

Reference: [synthetix/contracts/SupplySchedule.sol](https://github.com/Synthetixio/synthetix/blob/master/contracts/SupplySchedule.sol)

## Metadata

| Name                | Value                                      |
|---------------------|--------------------------------------------|
| Proposed by         | 0x2D407dDb06311396fE14D4b49da5F0471447d45C |
| Total for votes     | 3380.7051 (38.73%)                         |
| Total against votes | 5346.6313 (61.26%)                         |
| Quorum              | 82.39% ✔                                   |
| Start block         | 10560113                                   |
| End block           | 10577393                                   |

Source: [yieldfarming.info YFI Governance Information](https://yieldfarming.info/yearn/vote/)

## Copyright
Copyright and related rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/).
