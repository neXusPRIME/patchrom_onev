.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field isRemovedPackageSystemUpdate:Z

.field removedPackage:Ljava/lang/String;

.field removedUid:I

.field uid:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7512
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 7513
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 7514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 7516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-void
.end method


# virtual methods
.method sendBroadcast(ZZ)V
    .locals 6
    .parameter "fullRemove"
    .parameter "replacing"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 7519
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 7520
    .local v2, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7521
    const-string v0, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7522
    if-eqz p2, :cond_0

    .line 7523
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7525
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7526
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 7528
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 7529
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 7533
    :cond_1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v0, :cond_2

    .line 7534
    const-string v0, "android.intent.action.UID_REMOVED"

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    invoke-static {v1}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    move-object v1, v3

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 7537
    :cond_2
    return-void

    .line 7520
    :cond_3
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_0
.end method
