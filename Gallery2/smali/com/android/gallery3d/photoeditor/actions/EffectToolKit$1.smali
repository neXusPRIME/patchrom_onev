.class Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$1;
.super Ljava/lang/Object;
.source "EffectToolKit.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
