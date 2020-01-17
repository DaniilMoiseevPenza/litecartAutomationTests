select request_number rn from edc_doc.document_req_gui req, edc_secr.users u WHERE
  u.username = 'test_ods_auto'
  and filters #> '{dispatching}' @> u.organization_id::text::jsonb
  and status_id = const.request_resolved_status()
  AND payable_type_id = const.free_paid_payable_type()
  AND emergency_id = const.emergency_emergency()
  AND substatus_id = const.request_cancel_status() limit 1;