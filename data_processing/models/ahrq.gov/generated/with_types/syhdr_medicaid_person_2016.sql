-- SQL model for syhdr_medicaid_person_2016.CSV
{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

SELECT
    PERSON_ID::UBIGINT AS PERSON_ID,
    MCAID_BENE_ID::UBIGINT AS MCAID_BENE_ID,
    PERSON_WGHT::NUMERIC AS PERSON_WGHT,
    AGE_LOW::NUMERIC AS AGE_LOW,
    AGE_HIGH::NUMERIC AS AGE_HIGH,
    SEX_IDENT_CD::UBIGINT AS SEX_IDENT_CD,
    RACE_CD::VARCHAR AS RACE_CD,
    MCAID_SBMTTG_ST_CD::VARCHAR AS MCAID_SBMTTG_ST_CD,
    STATE_CD::VARCHAR AS STATE_CD,
    COUNTY_FIPS_CD::VARCHAR AS COUNTY_FIPS_CD,
    ZIP_CD::VARCHAR AS ZIP_CD,
    RSN_ENRLMT_CD::VARCHAR AS RSN_ENRLMT_CD,
    MDCD_ENRLMT_1::NUMERIC AS MDCD_ENRLMT_1,
    MDCD_ENRLMT_2::NUMERIC AS MDCD_ENRLMT_2,
    MDCD_ENRLMT_3::NUMERIC AS MDCD_ENRLMT_3,
    MDCD_ENRLMT_4::NUMERIC AS MDCD_ENRLMT_4,
    MDCD_ENRLMT_5::NUMERIC AS MDCD_ENRLMT_5,
    MDCD_ENRLMT_6::NUMERIC AS MDCD_ENRLMT_6,
    MDCD_ENRLMT_7::NUMERIC AS MDCD_ENRLMT_7,
    MDCD_ENRLMT_8::NUMERIC AS MDCD_ENRLMT_8,
    MDCD_ENRLMT_9::NUMERIC AS MDCD_ENRLMT_9,
    MDCD_ENRLMT_10::NUMERIC AS MDCD_ENRLMT_10,
    MDCD_ENRLMT_11::NUMERIC AS MDCD_ENRLMT_11,
    MDCD_ENRLMT_12::NUMERIC AS MDCD_ENRLMT_12,
    MDCD_MCO_ENRLMT_1::NUMERIC AS MDCD_MCO_ENRLMT_1,
    MDCD_MCO_ENRLMT_2::NUMERIC AS MDCD_MCO_ENRLMT_2,
    MDCD_MCO_ENRLMT_3::NUMERIC AS MDCD_MCO_ENRLMT_3,
    MDCD_MCO_ENRLMT_4::NUMERIC AS MDCD_MCO_ENRLMT_4,
    MDCD_MCO_ENRLMT_5::NUMERIC AS MDCD_MCO_ENRLMT_5,
    MDCD_MCO_ENRLMT_6::NUMERIC AS MDCD_MCO_ENRLMT_6,
    MDCD_MCO_ENRLMT_7::NUMERIC AS MDCD_MCO_ENRLMT_7,
    MDCD_MCO_ENRLMT_8::NUMERIC AS MDCD_MCO_ENRLMT_8,
    MDCD_MCO_ENRLMT_9::NUMERIC AS MDCD_MCO_ENRLMT_9,
    MDCD_MCO_ENRLMT_10::NUMERIC AS MDCD_MCO_ENRLMT_10,
    MDCD_MCO_ENRLMT_11::NUMERIC AS MDCD_MCO_ENRLMT_11,
    MDCD_MCO_ENRLMT_12::NUMERIC AS MDCD_MCO_ENRLMT_12,
    MDCD_CHIP_ENRLMT::NUMERIC AS MDCD_CHIP_ENRLMT,
    RSTRCTD_BNFTS_IND::NUMERIC AS RSTRCTD_BNFTS_IND,
    DUAL_ELGBL_1::NUMERIC AS DUAL_ELGBL_1,
    DUAL_ELGBL_2::NUMERIC AS DUAL_ELGBL_2,
    DUAL_ELGBL_3::NUMERIC AS DUAL_ELGBL_3,
    DUAL_ELGBL_4::NUMERIC AS DUAL_ELGBL_4,
    DUAL_ELGBL_5::NUMERIC AS DUAL_ELGBL_5,
    DUAL_ELGBL_6::NUMERIC AS DUAL_ELGBL_6,
    DUAL_ELGBL_7::NUMERIC AS DUAL_ELGBL_7,
    DUAL_ELGBL_8::NUMERIC AS DUAL_ELGBL_8,
    DUAL_ELGBL_9::NUMERIC AS DUAL_ELGBL_9,
    DUAL_ELGBL_10::NUMERIC AS DUAL_ELGBL_10,
    DUAL_ELGBL_11::NUMERIC AS DUAL_ELGBL_11,
    DUAL_ELGBL_12::NUMERIC AS DUAL_ELGBL_12
FROM read_csv('~/data/syh_dr/syhdr_medicaid_person_2016.CSV', header=True, null_padding=true, types={ 'PERSON_ID': 'UBIGINT', 'MCAID_BENE_ID': 'UBIGINT', 'PERSON_WGHT': 'NUMERIC', 'AGE_LOW': 'NUMERIC', 'AGE_HIGH': 'NUMERIC', 'SEX_IDENT_CD': 'UBIGINT', 'RACE_CD': 'VARCHAR', 'MCAID_SBMTTG_ST_CD': 'VARCHAR', 'STATE_CD': 'VARCHAR', 'COUNTY_FIPS_CD': 'VARCHAR', 'ZIP_CD': 'VARCHAR', 'RSN_ENRLMT_CD': 'VARCHAR', 'MDCD_ENRLMT_1': 'NUMERIC', 'MDCD_ENRLMT_2': 'NUMERIC', 'MDCD_ENRLMT_3': 'NUMERIC', 'MDCD_ENRLMT_4': 'NUMERIC', 'MDCD_ENRLMT_5': 'NUMERIC', 'MDCD_ENRLMT_6': 'NUMERIC', 'MDCD_ENRLMT_7': 'NUMERIC', 'MDCD_ENRLMT_8': 'NUMERIC', 'MDCD_ENRLMT_9': 'NUMERIC', 'MDCD_ENRLMT_10': 'NUMERIC', 'MDCD_ENRLMT_11': 'NUMERIC', 'MDCD_ENRLMT_12': 'NUMERIC', 'MDCD_MCO_ENRLMT_1': 'NUMERIC', 'MDCD_MCO_ENRLMT_2': 'NUMERIC', 'MDCD_MCO_ENRLMT_3': 'NUMERIC', 'MDCD_MCO_ENRLMT_4': 'NUMERIC', 'MDCD_MCO_ENRLMT_5': 'NUMERIC', 'MDCD_MCO_ENRLMT_6': 'NUMERIC', 'MDCD_MCO_ENRLMT_7': 'NUMERIC', 'MDCD_MCO_ENRLMT_8': 'NUMERIC', 'MDCD_MCO_ENRLMT_9': 'NUMERIC', 'MDCD_MCO_ENRLMT_10': 'NUMERIC', 'MDCD_MCO_ENRLMT_11': 'NUMERIC', 'MDCD_MCO_ENRLMT_12': 'NUMERIC', 'MDCD_CHIP_ENRLMT': 'NUMERIC', 'RSTRCTD_BNFTS_IND': 'NUMERIC', 'DUAL_ELGBL_1': 'NUMERIC', 'DUAL_ELGBL_2': 'NUMERIC', 'DUAL_ELGBL_3': 'NUMERIC', 'DUAL_ELGBL_4': 'NUMERIC', 'DUAL_ELGBL_5': 'NUMERIC', 'DUAL_ELGBL_6': 'NUMERIC', 'DUAL_ELGBL_7': 'NUMERIC', 'DUAL_ELGBL_8': 'NUMERIC', 'DUAL_ELGBL_9': 'NUMERIC', 'DUAL_ELGBL_10': 'NUMERIC', 'DUAL_ELGBL_11': 'NUMERIC', 'DUAL_ELGBL_12': 'NUMERIC' }, ignore_errors=true)