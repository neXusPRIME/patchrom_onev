.class Landroid/preference/CheckBoxPreference$1;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Lmiui/widget/SlidingButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/CheckBoxPreference;->setSlidingButtonListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Landroid/preference/CheckBoxPreference$1;->this$0:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/preference/CheckBoxPreference$1;->this$0:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/preference/CheckBoxPreference$1;->this$0:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Landroid/preference/CheckBoxPreference$1;->this$0:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 86
    :cond_0
    return-void
.end method
