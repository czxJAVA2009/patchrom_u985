.class Lcom/android/server/PowerManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 505
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 506
    .local v0, fVal:Ljava/lang/Float;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 505
    .end local v0           #fVal:Ljava/lang/Float;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 498
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 499
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 500
    .local v0, iVal:Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 499
    .end local v0           #iVal:Ljava/lang/Integer;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .parameter "o"
    .parameter "arg"

    .prologue
    const/high16 v6, 0x3f00

    .line 510
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3

    .line 512
    :try_start_0
    const-string v2, "PowerManagerService"

    const-string v4, "SettingsObserver update"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "stay_on_while_plugged_in"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mStayOnConditions:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;I)I

    .line 517
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)V

    .line 520
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "screen_off_timeout"

    const/16 v5, 0x3a98

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1502(Lcom/android/server/PowerManagerService;I)I

    .line 526
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;I)V

    .line 530
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)V

    .line 532
    const-string v2, "window_animation_scale"

    const/high16 v4, 0x3f80

    invoke-direct {p0, v2, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 533
    .local v1, windowScale:F
    const-string v2, "transition_animation_scale"

    const/high16 v4, 0x3f80

    invoke-direct {p0, v2, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 534
    .local v0, transitionScale:F
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1802(Lcom/android/server/PowerManagerService;I)I

    .line 535
    cmpl-float v2, v1, v6

    if-lez v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1876(Lcom/android/server/PowerManagerService;I)I

    .line 538
    :cond_0
    cmpl-float v2, v0, v6

    if-lez v2, :cond_1

    .line 542
    :cond_1
    monitor-exit v3

    .line 543
    return-void

    .line 542
    .end local v0           #transitionScale:F
    .end local v1           #windowScale:F
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
