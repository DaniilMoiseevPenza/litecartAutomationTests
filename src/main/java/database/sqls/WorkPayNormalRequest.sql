select request_number rn from edc_doc.document_req_gui req, edc_secr.users u WHERE
  u.username = 'test_ods_auto'
  and filters #> '{dispatching}' @> u.organization_id::text::jsonb
  and status_id = const.request_in_work_status()
  AND payable_type_id = const.paid_payable_type()
  AND emergency_id = const.normal_emergency()
  AND substatus_id is NULL limit 1;