enum TypeInput { manual, scanning, undefined }

enum TypeMessage { success, warning, error, notify }

enum CodeType { dataMatrix, code128, ean13, qr, undefined }

enum IconBgShape { square, squareRounded, circle }

enum ButtonHeightSize { standart, average, big }

enum ScannerMode {
  collectionVariableMode,
  collectionMode,
  addressCollectionMode,
  addressPlacementMode,
  defaultMode,
  freeMode
}

enum ScanItemState { startState, continueState }

enum CorrectionTypeCell { correction, zeroing, confirm }

enum PackageLogItemAction { interaction, moving, placement }

enum PackageLogItemType { put, take, info }

enum CellLogItemAction { interaction, extraction, moving }

enum CellLogItemType { put, take }

enum DeviceCheckStep { wasUpdated, isOutdatedNomenclature }

enum MovingWarehouseType { fromCell, fromPackage, fromRemains, package }

enum SettingThemeMode { light, dark }

enum SettingTextSize { standart, large, veryLarge }

enum SoundType { defaultError }

enum IndexTextType { sub, sup }

enum MovingType { fromRemains, fromPackage, fromCell, package }

enum DocumentType { moving, realization, undefined }

enum PackageMovingStatus { wait, accepted, cancel, undefined }

enum PackageMovingExternalStatus { wait, way, arrived }

enum PackageMovingExternalMovementType { place, leftWarehouse }

enum TransitStorageType { ship, disband, combineCell, undefined }

enum LogisticsTab { availability, withdraw, pack, send }

enum ModuleId {
  cell,
  package,
  inventory,
  inventoryCell,
  inventoryCellDubai,
  acceptanceOnAdmissionOC,
  acceptanceOnAdmissionWOC,
  shipmentOnMove,
  shipmentOnOrder,
  movingWarehouse,
  tradingHall,
  acceptanceOnMove,
  availability,
  transitStorage,
  logistics,
  productPlacement,
  productChecking
}

enum ModuleGroupId { acceptance, shipment, warehouseMovements }

enum AuthType { authSuccess, authRequired }

enum LogLevel { debug, info, warning, error, success }

enum LogisticsConfirmItemNeedStep { wait, waitAction, scanCell, scanItem }

enum InventoryCellStatus { notCarriedOut, carriedOut, carriedOutWithError }

enum DItemType { product, barcode, undefined }

enum ScannerBlockType {
  emptyProcess,
  emptyBase,
  blocked,
  start,
  existScanned,
  extraScanned
}
