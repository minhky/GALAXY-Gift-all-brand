.class Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;
.super Ljava/lang/Object;
.source "ContinueBoardAdapterGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private imgDelete:Landroid/widget/ImageView;

.field private tvModel:Landroid/widget/TextView;

.field private tvSerial:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget v0, Lcom/bzbs/lib/survey/R$id;->tv_model:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;->tvModel:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/bzbs/lib/survey/R$id;->tv_serial:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;->tvSerial:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/bzbs/lib/survey/R$id;->img_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;->imgDelete:Landroid/widget/ImageView;

    .line 84
    return-void
.end method


# virtual methods
.method public onBind(ILcom/bzbs/lib/survey/models/ContinueDataModel;Landroid/app/Activity;Lcom/bzbs/lib/survey/listener/OnTabItemListener;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "menuModel"    # Lcom/bzbs/lib/survey/models/ContinueDataModel;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "onTabItemListener"    # Lcom/bzbs/lib/survey/listener/OnTabItemListener;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;->tvModel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;->tvSerial:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->getSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    if-eqz p1, :cond_1b

    .line 90
    iget-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;->imgDelete:Landroid/widget/ImageView;

    sget v1, Lcom/bzbs/lib/survey/R$drawable;->ic_delete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    :cond_1b
    return-void
.end method